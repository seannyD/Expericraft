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
import net.minecraft.util.text.TextComponentString;
import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.BlockRenderLayer;
import net.minecraft.item.ItemStack;
import net.minecraft.item.ItemBlock;
import net.minecraft.item.Item;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.client.renderer.block.model.ModelResourceLocation;
import net.minecraft.client.Minecraft;
import net.minecraft.block.state.IBlockState;
import net.minecraft.block.material.Material;
import net.minecraft.block.SoundType;
import net.minecraft.block.Block;

import java.util.List;
import java.util.Random;

public class mcreator_noonBlock {

	public mcreator_noonBlock() {
	}

	public static BlockNoonBlock block;

	public static Object instance;
	
	public static int tickCounter = 0; 

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
		block.setRegistryName("noonblock");
		GameRegistry.register(block);
		GameRegistry.register(new ItemBlock(block).setRegistryName(block.getRegistryName()));
	}

	public void registerRenderers() {
	}

	public void load(FMLInitializationEvent event) {
		if (event.getSide() == Side.CLIENT) {
			Minecraft.getMinecraft().getRenderItem().getItemModelMesher()
					.register(Item.getItemFromBlock(block), 0, new ModelResourceLocation("examplemod:noonblock", "inventory"));
		}
	}

	static {

		block = (BlockNoonBlock) (new BlockNoonBlock().setHardness(2.0F).setResistance(10.0F).setLightLevel(0.0F).setUnlocalizedName("NoonBlock")
				.setLightOpacity(0).setCreativeTab(CreativeTabs.BUILDING_BLOCKS));
		block.setHarvestLevel("pickaxe", 4);
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	static class BlockNoonBlock extends Block {

		int a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0;

		boolean red = false;

		protected BlockNoonBlock() {
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
		public void updateTick(World world, BlockPos pos, IBlockState state, Random random) {
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			//EntityPlayer entity = Minecraft.getMinecraft().player;

			// set time to noon
			world.setWorldTime(6000);
			
			// Kill all mobs
			tickCounter += 1;
			if(tickCounter >= 3){
				// every 2 minutes
				tickCounter = 0;
                // kill all mobs in range
                int h_range = 200;
                int v_range = 10;
 
                AxisAlignedBB range = new AxisAlignedBB(i - h_range, j - v_range, k - h_range, 
                										i + h_range, j + v_range, k + h_range);
                
                //List<Entity> moblist = world.getEntitiesInAABBexcluding(entity, range, null);
                List<EntityCreature> moblist = world.getEntitiesWithinAABB(EntityCreature.class, range);
                  if (!moblist.isEmpty()) {
                      for (Entity entry : moblist) {
                          EntityCreature mob = (EntityCreature) entry;
                          mob.setDead();
                      }
                  }
			}

			world.scheduleUpdate(new BlockPos(i, j, k), this, this.tickRate(world));
		}

		@SideOnly(Side.CLIENT)
		@Override
		public BlockRenderLayer getBlockLayer() {
			return BlockRenderLayer.SOLID;
		}

		@Override
		public AxisAlignedBB getBoundingBox(IBlockState state, IBlockAccess source, BlockPos pos) {
			return new AxisAlignedBB(0.0D, 0.0D, 0.0D, 1.0D, 1.0D, 1.0D);
		}

		@Override
		public int tickRate(World world) {
			return 600; // once every 30 seconds
		}

		@Override
		public int quantityDropped(Random par1Random) {
			return 1;
		}

	}
}
