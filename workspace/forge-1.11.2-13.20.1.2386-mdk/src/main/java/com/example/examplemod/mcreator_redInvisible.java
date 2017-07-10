package com.example.examplemod;

import net.minecraftforge.fml.relauncher.SideOnly;
import net.minecraftforge.fml.relauncher.Side;
import net.minecraftforge.fml.common.registry.GameRegistry;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;

import net.minecraft.world.World;
import net.minecraft.world.IBlockAccess;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.BlockRenderLayer;
import net.minecraft.item.ItemStack;
import net.minecraft.item.ItemBlock;
import net.minecraft.item.Item;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.EntityLivingBase;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.client.renderer.block.model.ModelResourceLocation;
import net.minecraft.client.Minecraft;
import net.minecraft.block.state.IBlockState;
import net.minecraft.block.material.Material;
import net.minecraft.block.SoundType;
import net.minecraft.block.Block;

import net.minecraft.entity.player.EntityPlayer;

import java.util.Random;

public class mcreator_redInvisible {

	public mcreator_redInvisible() {
	}

	public static BlockRedInvisible block;

	public static Object instance;

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
		block.setRegistryName("redinvisible");
		GameRegistry.register(block);
		GameRegistry.register(new ItemBlock(block).setRegistryName(block.getRegistryName()));
	}

	public void registerRenderers() {
	}

	public void load(FMLInitializationEvent event) {
		if (event.getSide() == Side.CLIENT) {
			Minecraft.getMinecraft().getRenderItem().getItemModelMesher()
					.register(Item.getItemFromBlock(block), 0, new ModelResourceLocation("examplemod:redinvisible", "inventory"));
		}
	}

	static {

		block = (BlockRedInvisible) (new BlockRedInvisible().setHardness(2.0F).setResistance(10.0F).setLightLevel(0.0F)
				.setUnlocalizedName("RedInvisible").setLightOpacity(0).setCreativeTab(CreativeTabs.BUILDING_BLOCKS));
		block.setHarvestLevel("pickaxe", 4);
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	static class BlockRedInvisible extends Block {

		int a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0;

		boolean red = false;

		protected BlockRedInvisible() {
			super(Material.GROUND);

			setSoundType(SoundType.WOOD);

		}

		@Override
		public void onBlockAdded(World world, BlockPos pos, IBlockState state) {
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			world.scheduleUpdate(new BlockPos(i, j, k), this, this.tickRate(world));

		}

		@Override
		public int getWeakPower(IBlockState blockState, IBlockAccess blockAccess, BlockPos pos, EnumFacing side) {
			return red ? 15 : 0;
		}

		@Override
		public int getStrongPower(IBlockState blockState, IBlockAccess blockAccess, BlockPos pos, EnumFacing side) {
			return red ? 15 : 0;
		}

		@Override
		public void onBlockDestroyedByPlayer(World world, BlockPos pos, IBlockState state) {
			EntityPlayer entity = Minecraft.getMinecraft().player;
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			if (true) {
				System.out.println("0");
			}

		}

		@Override
		public void onBlockPlacedBy(World world, BlockPos pos, IBlockState state, EntityLivingBase entity, ItemStack stack) {
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			if (true) {
				world.setBlockToAir(new BlockPos(i, j, k));
			}

			if (true) {
				world.setBlockState(new BlockPos(i, j, k), mcreator_redGround.block.getDefaultState(), 3);
			}
            EntityPlayer player = Minecraft.getMinecraft().player;
            String s = String.valueOf(i) + "," +
                          String.valueOf(j) + "," +
                          String.valueOf(k) + "," +
                          block.getUnlocalizedName() + "," +
                          player.getName() + "," +
                          "P";
               mcreator_logBlocks.logBlockActivity(s);

		}

		@Override
		public boolean isOpaqueCube(IBlockState state) {
			return false;
		}

		@SideOnly(Side.CLIENT)
		@Override
		public BlockRenderLayer getBlockLayer() {
			return BlockRenderLayer.CUTOUT;
		}

		@Override
		public AxisAlignedBB getBoundingBox(IBlockState state, IBlockAccess source, BlockPos pos) {
			return new AxisAlignedBB(0.0D, 0.0D, 0.0D, 1.0D, 1.0D, 1.0D);
		}

		@Override
		public int tickRate(World world) {
			return 10;
		}

		@Override
		public int quantityDropped(Random par1Random) {
			return 1;
		}

	}
}
