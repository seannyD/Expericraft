package mod.mcreator;



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

public class mcreator_greenOverlay {

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
                         //System.out.println(sx);
                         String tex = null;
                         if(sx.equals("GreenBlockinvisible") || sx.equals("tile.GreenBlockinvisible")){
                              tex= "greenBlockGround.png";
                         } else if(sx.equals("BlueBlockinvisible") || sx.equals("tile.BlueBlockinvisible")){
                              tex = "blueblocktexture2.png";
                         } else if(sx.equals("tile.OrangeBlock")){
                              tex="OrangeBig.png";
                         } else if(sx.equals("tile.RedBlock")){
                              tex="BlueBig.png";
                         }
                         if(tex!=null){
					     Minecraft.getMinecraft().renderEngine.bindTexture(new ResourceLocation(tex));
					     Minecraft.getMinecraft().ingameGUI.drawTexturedModalRect(posX + (-91), posY + (81), 0, 0, 32, 32);
                         }
				}

			}

		}
	}

	public mcreator_greenOverlay() {
	}

	public static Object instance;

	public void load(FMLInitializationEvent event) {
		//MinecraftForge.EVENT_BUS.register(new GUIRenderEventClass());
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
