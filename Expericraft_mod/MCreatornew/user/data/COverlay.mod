�� sr  co.pylo.mcreator.SavedDataVector        L vt Ljava/util/Vector;xpsr java.util.Vectorٗ}[�;� I capacityIncrementI elementCount[ elementDatat [Ljava/lang/Object;xp       ur [Ljava.lang.Object;��X�s)l  xp   sr )co.pylo.mcreator.SavedDataVector$DataUnit        L keyt Ljava/lang/String;L this$0t "Lco/pylo/mcreator/SavedDataVector;L valuet Ljava/lang/Object;xpt nameq ~ t COverlaysq ~ t idq ~ ur [IM�`&v겥  xp                       sq ~ t dataq ~ sr java.util.ArrayListx����a� I sizexp   w   sr )co.pylo.mcreator.modgui.WYSIWYG1Component        I hI idZ logicI valueI wI xI yL ct Ljava/awt/Color;L 	eventCodeq ~ 	L it Ljavax/swing/Icon;L imageq ~ 	L nameq ~ 	L par1q ~ 	L tq ~ 	L textq ~ 	xp                   �  �sr java.awt.Color���3u F falphaI valueL cst Ljava/awt/color/ColorSpace;[ 	frgbvaluet [F[ fvalueq ~ xp    ����pppt  pt GreenBig.pngq ~ q ~ t imaget GreenBigsq ~                    �  �q ~ q ~ pt OrangeBig.pngq ~ q ~ q ~ !t 	OrangeBigsq ~                    �  �q ~ q ~ pt 
RedBig.pngq ~ q ~ q ~ !t RedBigsq ~                    �  �q ~ q ~ pt BlueBig.pngq ~ q ~ q ~ !t BlueBigxsq ~ t spa1q ~ sr java.lang.Integer⠤���8 I valuexr java.lang.Number������  xp  `sq ~ t spa2q ~ sq ~ .  Lsq ~ t lolq ~ t GUI without slotssq ~ t boxq ~ sr java.lang.Boolean� r�՜�� Z valuexp sq ~ t boxekq ~ t NORMALsq ~ t fq ~ t (In all cases)sq ~ t 
codeLockedq ~ sq ~ 9sq ~ t actualModCodeq ~ t3package mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
                         String tex = null;
                         if(sx == "BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ t<package mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
                         String tex = "BlueBig.png";
                         if(sx == "BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ tApackage mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
                         String tex = "BlueBig.png";
                         if(sx == "BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="tile.GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ twpackage mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
                         System.out.println(">>"+sx);
                         String tex = "BlueBig.png";
                         if(sx == "BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="tile.GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ t�package mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.io.PrintWriter;
import java.io.FileOutputStream;
import java.io.File;


import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
                         try{
                         PrintWriter writer = new PrintWriter(new FileOutputStream(
                              new File("Overlay.txt"), false));
                         writer.println(sx);
                         writer.close();
                         } catch(Exception e){}

                         
                         String tex = "BlueBig.png";
                         if(sx == "BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="tile.GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ t�package mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.io.PrintWriter;
import java.io.FileOutputStream;
import java.io.File;


import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
//                         try{
//                         PrintWriter writer = new PrintWriter(new FileOutputStream(
//                              new File("Overlay.txt"), false));
//                         writer.println(sx);
//                         writer.close();
//                         } catch(Exception e){}

                         
                         String tex = null;
                         if(sx == "tile.BlueInvisible"){
                              tex = "BlueBig.png";
                         } else if (sx =="tile.GreenInvisible"){
                              tex = "GreenBig.png";
                         } else if (sx == "tile.OrangeInvisible"){
                              tex = "OrangeBig.png";
                         } else if (sx == "tile.RedInvisible"){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ tpackage mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.io.PrintWriter;
import java.io.FileOutputStream;
import java.io.File;


import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();
//                         try{
//                         PrintWriter writer = new PrintWriter(new FileOutputStream(
//                              new File("Overlay.txt"), false));
//                         writer.println(sx);
//                         writer.close();
//                         } catch(Exception e){}

                         
                         String tex = null;
                         if(sx.equals("tile.BlueInvisible")){
                              tex = "BlueBig.png";
                         } else if (sx.equals("tile.GreenInvisible")){
                              tex = "GreenBig.png";
                         } else if (sx.equals("tile.OrangeInvisible")){
                              tex = "OrangeBig.png";
                         } else if (sx.equals("tile.RedInvisible")){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
sq ~ t actualModCodeq ~ t�package mod.mcreator;

import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.eventhandler.EventPriority;
import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.event.terraingen.PopulateChunkEvent;
import net.minecraftforge.event.terraingen.DecorateBiomeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.RenderGameOverlayEvent;

import net.minecraft.world.World;
import net.minecraft.util.ResourceLocation;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.client.Minecraft;

import java.io.PrintWriter;
import java.io.FileOutputStream;
import java.io.File;


import java.util.Random;

//import static net.minecraftforge.event.terraingen.PopulateChunkEvent.Populate.EventType.*;

//import static net.minecraftforge.event.terraingen.DecorateBiomeEvent.Decorate.EventType.*;

public class mcreator_cOverlay {

	public static class GUIRenderEventClass {
		@SubscribeEvent(priority = EventPriority.NORMAL)
		public void eventHandler(RenderGameOverlayEvent event) {

			if (!event.isCancelable() && event.getType() == RenderGameOverlayEvent.ElementType.HELMET) {

				int posX = (event.getResolution().getScaledWidth()) / 2;
				int posY = (event.getResolution().getScaledHeight()) / 2;

				EntityPlayer entity = Minecraft.getMinecraft().player;
				int i = (int) entity.posX;
				int j = (int) entity.posY;
				int k = (int) entity.posZ;
				int x = i;
				int y = j;
				int z = k;
				MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				World world = server.worlds[0];

                    if (entity.inventory.getCurrentItem() != null){// && entity.inventory.getCurrentItem().getItem() == mcreator_greenBlockinvisible.block) {
                         String sx = entity.inventory.getCurrentItem().getItem().getUnlocalizedName();

                         
                         String tex = null;
                         if(sx.equals("tile.BlueInvisible")){
                              tex = "BlueBig.png";
                         } else if (sx.equals("tile.GreenInvisible")){
                              tex = "GreenBig.png";
                         } else if (sx.equals("tile.OrangeInvisible")){
                              tex = "OrangeBig.png";
                         } else if (sx.equals("tile.RedInvisible")){
                              tex = "RedBig.png";
                         }
                         
                         if(tex!=null){
                              Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
                              Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 256, 256);
                         }
                         
                    

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Blue.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-82), posY + (86), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Green.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-73), posY + (87), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Orange.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-61), posY + (88), 0, 0, 256, 256);

				//Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("Red.png"));
				//Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-51), posY + (89), 0, 0, 256, 256);

                    }

			}

		}
	}

	public mcreator_cOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void serverLoad(FMLServerStartingEvent event) {
	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	public void registerRenderers() {
	}
}
ppx