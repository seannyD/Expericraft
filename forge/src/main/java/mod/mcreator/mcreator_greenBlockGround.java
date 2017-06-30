package mod.mcreator;



import net.minecraftforge.fml.relauncher.SideOnly;
import net.minecraftforge.fml.relauncher.Side;
import net.minecraftforge.fml.common.registry.GameRegistry;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;

import net.minecraft.world.World;
import net.minecraft.world.EnumDifficulty;
import net.minecraft.world.GameType;
import net.minecraft.world.IBlockAccess;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.BlockRenderLayer;
import net.minecraft.item.ItemStack;
import net.minecraft.item.ItemBlock;
import net.minecraft.item.Item;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.init.Blocks;
import net.minecraft.client.renderer.block.model.ModelResourceLocation;
import net.minecraft.client.Minecraft;
import net.minecraft.block.state.IBlockState;
import net.minecraft.block.material.Material;
import net.minecraft.block.SoundType;
import net.minecraft.block.Block;

import java.lang.reflect.Array;
import java.util.List;
import java.util.Random;

public class mcreator_greenBlockGround {

	public mcreator_greenBlockGround() {
	}

	public static BlockGreenBlockGround block;

	public static Object instance;

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
		block.setRegistryName("greenblockground");
		GameRegistry.register(block);
		GameRegistry.register(new ItemBlock(block).setRegistryName(block.getRegistryName()));
	}

	public void registerRenderers() {
	}

	public void load(FMLInitializationEvent event) {
		if (event.getSide() == Side.CLIENT) {
			Minecraft.getMinecraft().getRenderItem().getItemModelMesher()
					.register(Item.getItemFromBlock(block), 0, new ModelResourceLocation("expericraft2:greenblockground", "inventory"));
		}
	}

	static {

		block = (BlockGreenBlockGround) (new BlockGreenBlockGround().setHardness(1.0F).setResistance(10.0F).setLightLevel(0.0F)
				.setUnlocalizedName("GreenBlockGround").setLightOpacity(0).setCreativeTab(CreativeTabs.BUILDING_BLOCKS));
		block.setHarvestLevel("pickaxe", 4);
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	static class BlockGreenBlockGround extends Block {

		int a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0;

		boolean red = false;

		protected BlockGreenBlockGround() {
			super(Material.GROUND);

			setSoundType(SoundType.WOOD);

		}

		@Override
		public void onBlockAdded(World world, BlockPos pos, IBlockState state) {
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			world.scheduleUpdate(new BlockPos(i, j, k), this, this.tickRate(world));
			world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);
		}

		@Override
		public int getWeakPower(IBlockState blockState, IBlockAccess blockAccess, BlockPos pos, EnumFacing side) {
			return red ? 15 : 0;
		}

		@Override
		public int getStrongPower(IBlockState blockState, IBlockAccess blockAccess, BlockPos pos, EnumFacing side) {
			return red ? 15 : 0;
		}

		@SideOnly(Side.CLIENT)
		@Override
		public BlockRenderLayer getBlockLayer() {
			return BlockRenderLayer.SOLID;
		}
		
		@Override
		public void onBlockDestroyedByPlayer(World world, BlockPos pos, IBlockState state) {
			EntityPlayer entity = Minecraft.getMinecraft().player;
			
			int i = pos.getX();
			int j = pos.getY();
			int k = pos.getZ();
			if (true) {
				LogBlocks.logBlockActivity(block.getUnlocalizedName());
			}
			world.getWorldInfo().setCleanWeatherTime(100000);
			world.setWorldTime(6000);
			world.getWorldInfo().time;
			world.scheduleUpdate(pos, blockIn, delay);
			world.getEntitiesInAABBexcluding(entityIn, boundingBox, predicate);
			
			Blocks.WOOL.setResistance(100F);
			Blocks.OAK_FENCE.setResistance(200F);
			Blocks.OAK_FENCE_GATE.setResistance(200F);
			Blocks.GRASS.setResistance(200F);
			Blocks.DIRT.setResistance(200F);
			Array x = new Array();
			String[] x;
			GameType.CREATIVE
		    
			
			
			AxisAlignedBB range = new AxisAlignedBB(i - 0.5D, j - 0.5D, k - 0.5D, i + 0.5D, j + 0.5D, k + 0.5D);
			
			List<Entity> moblist = world.getEntitiesInAABBexcluding(null, range, IMob.MOB_SELECTOR);
			moblist.size()
            if (!moblist.isEmpty()) {
                
                for (Entity entry : moblist) {
                    if (!(entry instanceof EntityCreature)) {
                        continue;
                    }
                    entry.setDead();
                    entry.getName()
                    EntityCreature mob = (EntityCreature) entry;
                    mob.setDead();
                }
            }
			
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
			return 0;
		}
		
        @Override
        public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
              world.setWorldTime(6000); // set to noon
        }

		@Override
		public Item getItemDropped(IBlockState state, Random par2Random, int par3) {
			return new ItemStack(mcreator_greenBlockinvisible.block).getItem();
		}
	}
}
