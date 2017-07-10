package com.example.examplemod;

import java.util.Random;

import com.example.examplemod.ExampleMod.GuiHandler;

import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.init.Blocks;
import net.minecraft.item.ItemStack;
import net.minecraft.world.World;
import net.minecraft.world.chunk.IChunkGenerator;
import net.minecraft.world.chunk.IChunkProvider;
import net.minecraftforge.client.model.obj.OBJLoader;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.fml.common.IFuelHandler;
import net.minecraftforge.fml.common.IWorldGenerator;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.SidedProxy;
import net.minecraftforge.fml.common.Mod.EventHandler;
import net.minecraftforge.fml.common.Mod.Instance;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.network.IGuiHandler;
import net.minecraftforge.fml.common.network.NetworkRegistry;
import net.minecraftforge.fml.common.registry.GameRegistry;
import net.minecraftforge.fml.relauncher.Side;

//@Mod(modid = ExampleMod.MODID, version = ExampleMod.VERSION)
//public class ExampleMod
//{
//    public static final String MODID = "examplemod";
//    public static final String VERSION = "1.0";
//    
//    @EventHandler
//    public void init(FMLInitializationEvent event)
//    {
//        // some example code
//        System.out.println("DIRT BLOCK >> "+Blocks.DIRT.getUnlocalizedName());
//    }
//}


@Mod(modid = ExampleMod.MODID, version = ExampleMod.VERSION)
public class ExampleMod implements IFuelHandler, IWorldGenerator {

	public static final String MODID = "examplemod";
	public static final String VERSION = "1.0.0";

	//@SidedProxy(clientSide = "mod.mcreator.ClientProxymodname", serverSide = "mod.mcreator.CommonProxymodname")
	@SidedProxy(clientSide = "com.example.examplemod.ClientProxymodname", serverSide = "com.example.examplemod.CommonProxymodname")
	public static CommonProxymodname proxy;

	@Instance(MODID)
	public static ExampleMod instance;

	mcreator_redGround mcreator_0 = new mcreator_redGround();
	mcreator_blueGround mcreator_1 = new mcreator_blueGround();
	mcreator_orageGround mcreator_2 = new mcreator_orageGround();
	mcreator_greenGround mcreator_3 = new mcreator_greenGround();
	mcreator_redInvisible mcreator_4 = new mcreator_redInvisible();
	mcreator_greenInvisible mcreator_5 = new mcreator_greenInvisible();
	mcreator_blueInvisible mcreator_6 = new mcreator_blueInvisible();
	mcreator_orangeInvisible mcreator_7 = new mcreator_orangeInvisible();
	mcreator_cOverlay mcreator_8 = new mcreator_cOverlay();
	mcreator_clearBlocks mcreator_9 = new mcreator_clearBlocks();
	mcreator_test mcreator_10 = new mcreator_test();
	mcreator_logBlocks mcreator_11 = new mcreator_logBlocks();
	mcreator_experimentalConditions mcreator_12 = new mcreator_experimentalConditions();
	mcreator_setup mcreator_setup = new mcreator_setup();
	mcreator_cyanGround mcreator_13 = new mcreator_cyanGround();
	mcreator_yellowGround mcreator_14 = new mcreator_yellowGround();
	mcreator_cyanInvisible mcreator_15 = new mcreator_cyanInvisible();
	mcreator_yellowInvisible mcreator_16 = new mcreator_yellowInvisible();
	mcreator_blackInvisible mcreator_17 = new mcreator_blackInvisible();
	mcreator_pinkInvisible mcreator_18 = new mcreator_pinkInvisible();
	mcreator_whiteInvisible mcreator_19 = new mcreator_whiteInvisible();
	mcreator_brownInvisible mcreator_20 = new mcreator_brownInvisible();
	mcreator_blackGround mcreator_21 = new mcreator_blackGround();
	mcreator_pinkGround mcreator_22 = new mcreator_pinkGround();
	mcreator_whiteGround mcreator_23 = new mcreator_whiteGround();
	mcreator_brownGround mcreator_24 = new mcreator_brownGround();
	mcreator_testOverlay mcreator_25 = new mcreator_testOverlay();
	mcreator_noonBlock mcreator_26 = new mcreator_noonBlock();

	@Override
	public int getBurnTime(ItemStack fuel) {
		if (mcreator_0.addFuel(fuel) != 0)
			return mcreator_0.addFuel(fuel);
		if (mcreator_1.addFuel(fuel) != 0)
			return mcreator_1.addFuel(fuel);
		if (mcreator_2.addFuel(fuel) != 0)
			return mcreator_2.addFuel(fuel);
		if (mcreator_3.addFuel(fuel) != 0)
			return mcreator_3.addFuel(fuel);
		if (mcreator_4.addFuel(fuel) != 0)
			return mcreator_4.addFuel(fuel);
		if (mcreator_5.addFuel(fuel) != 0)
			return mcreator_5.addFuel(fuel);
		if (mcreator_6.addFuel(fuel) != 0)
			return mcreator_6.addFuel(fuel);
		if (mcreator_7.addFuel(fuel) != 0)
			return mcreator_7.addFuel(fuel);
		if (mcreator_8.addFuel(fuel) != 0)
			return mcreator_8.addFuel(fuel);
		if (mcreator_9.addFuel(fuel) != 0)
			return mcreator_9.addFuel(fuel);
		if (mcreator_10.addFuel(fuel) != 0)
			return mcreator_10.addFuel(fuel);
		if (mcreator_11.addFuel(fuel) != 0)
			return mcreator_11.addFuel(fuel);
		if (mcreator_12.addFuel(fuel) != 0)
			return mcreator_12.addFuel(fuel);
		if (mcreator_13.addFuel(fuel) != 0)
			return mcreator_13.addFuel(fuel);
		if (mcreator_14.addFuel(fuel) != 0)
			return mcreator_14.addFuel(fuel);
		if (mcreator_15.addFuel(fuel) != 0)
			return mcreator_15.addFuel(fuel);
		if (mcreator_16.addFuel(fuel) != 0)
			return mcreator_16.addFuel(fuel);
		if (mcreator_17.addFuel(fuel) != 0)
			return mcreator_17.addFuel(fuel);
		if (mcreator_18.addFuel(fuel) != 0)
			return mcreator_18.addFuel(fuel);
		if (mcreator_19.addFuel(fuel) != 0)
			return mcreator_19.addFuel(fuel);
		if (mcreator_20.addFuel(fuel) != 0)
			return mcreator_20.addFuel(fuel);
		if (mcreator_21.addFuel(fuel) != 0)
			return mcreator_21.addFuel(fuel);
		if (mcreator_22.addFuel(fuel) != 0)
			return mcreator_22.addFuel(fuel);
		if (mcreator_23.addFuel(fuel) != 0)
			return mcreator_23.addFuel(fuel);
		if (mcreator_24.addFuel(fuel) != 0)
			return mcreator_24.addFuel(fuel);
		if (mcreator_25.addFuel(fuel) != 0)
			return mcreator_25.addFuel(fuel);
		if (mcreator_26.addFuel(fuel) != 0)
			return mcreator_26.addFuel(fuel);
		return 0;
	}

	@Override
	public void generate(Random random, int chunkX, int chunkZ, World world, IChunkGenerator chunkGenerator, IChunkProvider chunkProvider) {

		chunkX = chunkX * 16;
		chunkZ = chunkZ * 16;
		if (world.provider.getDimension() == -1)
			mcreator_0.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_0.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_1.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_1.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_2.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_2.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_3.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_3.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_4.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_4.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_5.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_5.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_6.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_6.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_7.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_7.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_8.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_8.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_9.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_9.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_10.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_10.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_11.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_11.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_12.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_12.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_13.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_13.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_14.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_14.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_15.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_15.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_16.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_16.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_17.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_17.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_18.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_18.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_19.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_19.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_20.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_20.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_21.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_21.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_22.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_22.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_23.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_23.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_24.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_24.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_25.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_25.generateSurface(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == -1)
			mcreator_26.generateNether(world, random, chunkX, chunkZ);
		if (world.provider.getDimension() == 0)
			mcreator_26.generateSurface(world, random, chunkX, chunkZ);

	}

	@EventHandler
	public void load(FMLInitializationEvent event) {

		GameRegistry.registerFuelHandler(this);
		GameRegistry.registerWorldGenerator(this, 1);
		if (event.getSide() == Side.CLIENT) {
			OBJLoader.INSTANCE.addDomain("examplemod");
		}
		MinecraftForge.EVENT_BUS.register(new mcreator_GlobalEventsmodname());
		NetworkRegistry.INSTANCE.registerGuiHandler(this, new GuiHandler());
		mcreator_0.load(event);
		mcreator_1.load(event);
		mcreator_2.load(event);
		mcreator_3.load(event);
		mcreator_4.load(event);
		mcreator_5.load(event);
		mcreator_6.load(event);
		mcreator_7.load(event);
		mcreator_8.load(event);
		mcreator_9.load(event);
		mcreator_10.load(event);
		mcreator_11.load(event);
		mcreator_12.load(event);
		mcreator_setup.load(event);
		mcreator_13.load(event);
		mcreator_14.load(event);
		mcreator_15.load(event);
		mcreator_16.load(event);
		mcreator_17.load(event);
		mcreator_18.load(event);
		mcreator_19.load(event);
		mcreator_20.load(event);
		mcreator_21.load(event);
		mcreator_22.load(event);
		mcreator_23.load(event);
		mcreator_24.load(event);
		mcreator_25.load(event);
		mcreator_26.load(event);
		proxy.registerRenderers(this);

	}

	@EventHandler
	public void serverLoad(FMLServerStartingEvent event) {
		mcreator_0.serverLoad(event);
		mcreator_1.serverLoad(event);
		mcreator_2.serverLoad(event);
		mcreator_3.serverLoad(event);
		mcreator_4.serverLoad(event);
		mcreator_5.serverLoad(event);
		mcreator_6.serverLoad(event);
		mcreator_7.serverLoad(event);
		mcreator_8.serverLoad(event);
		mcreator_9.serverLoad(event);
		mcreator_10.serverLoad(event);
		mcreator_11.serverLoad(event);
		mcreator_12.serverLoad(event);
		mcreator_setup.serverLoad(event);
		mcreator_13.serverLoad(event);
		mcreator_14.serverLoad(event);
		mcreator_15.serverLoad(event);
		mcreator_16.serverLoad(event);
		mcreator_17.serverLoad(event);
		mcreator_18.serverLoad(event);
		mcreator_19.serverLoad(event);
		mcreator_20.serverLoad(event);
		mcreator_21.serverLoad(event);
		mcreator_22.serverLoad(event);
		mcreator_23.serverLoad(event);
		mcreator_24.serverLoad(event);
		mcreator_25.serverLoad(event);
		mcreator_26.serverLoad(event);
	}

	@EventHandler
	public void preInit(FMLPreInitializationEvent event) {
		mcreator_0.instance = this.instance;
		mcreator_1.instance = this.instance;
		mcreator_2.instance = this.instance;
		mcreator_3.instance = this.instance;
		mcreator_4.instance = this.instance;
		mcreator_5.instance = this.instance;
		mcreator_6.instance = this.instance;
		mcreator_7.instance = this.instance;
		mcreator_8.instance = this.instance;
		mcreator_9.instance = this.instance;
		mcreator_10.instance = this.instance;
		mcreator_11.instance = this.instance;
		mcreator_12.instance = this.instance;
		mcreator_setup.instance = this.instance;
		mcreator_13.instance = this.instance;
		mcreator_14.instance = this.instance;
		mcreator_15.instance = this.instance;
		mcreator_16.instance = this.instance;
		mcreator_17.instance = this.instance;
		mcreator_18.instance = this.instance;
		mcreator_19.instance = this.instance;
		mcreator_20.instance = this.instance;
		mcreator_21.instance = this.instance;
		mcreator_22.instance = this.instance;
		mcreator_23.instance = this.instance;
		mcreator_24.instance = this.instance;
		mcreator_25.instance = this.instance;
		mcreator_26.instance = this.instance;
		mcreator_0.preInit(event);
		mcreator_1.preInit(event);
		mcreator_2.preInit(event);
		mcreator_3.preInit(event);
		mcreator_4.preInit(event);
		mcreator_5.preInit(event);
		mcreator_6.preInit(event);
		mcreator_7.preInit(event);
		mcreator_8.preInit(event);
		mcreator_9.preInit(event);
		mcreator_10.preInit(event);
		mcreator_11.preInit(event);
		mcreator_12.preInit(event);
		mcreator_setup.preInit(event);
		mcreator_13.preInit(event);
		mcreator_14.preInit(event);
		mcreator_15.preInit(event);
		mcreator_16.preInit(event);
		mcreator_17.preInit(event);
		mcreator_18.preInit(event);
		mcreator_19.preInit(event);
		mcreator_20.preInit(event);
		mcreator_21.preInit(event);
		mcreator_22.preInit(event);
		mcreator_23.preInit(event);
		mcreator_24.preInit(event);
		mcreator_25.preInit(event);
		mcreator_26.preInit(event);

	}

	public static class GuiHandler implements IGuiHandler {
		@Override
		public Object getServerGuiElement(int id, EntityPlayer player, World world, int x, int y, int z) {
			return null;
		}

		@Override
		public Object getClientGuiElement(int id, EntityPlayer player, World world, int x, int y, int z) {
			return null;
		}
	}

}
