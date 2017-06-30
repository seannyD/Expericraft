

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

public class mcreator_testOverlay {

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
				//MinecraftServer server = FMLCommonHandler.instance().getMinecraftServerInstance();
				//World world = server.worlds[0];

				if (0 == 1) {

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("BlackGround_Big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-135), posY + (84), 0, 0, 256, 256);

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("BrownGround_Big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (78), 0, 0, 256, 256);

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("CyanGround_big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-92), posY + (77), 0, 0, 256, 256);

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("PinkGround_Big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (77), 0, 0, 256, 256);

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("WhiteGround_Big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-93), posY + (77), 0, 0, 256, 256);

					Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation("YellowGround_Big.png"));
					Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-93), posY + (78), 0, 0, 256, 256);

				}

			}

		}
	}

	public mcreator_testOverlay() {
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
