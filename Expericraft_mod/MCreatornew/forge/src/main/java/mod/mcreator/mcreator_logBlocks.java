

import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;

import net.minecraft.world.WorldServer;
import net.minecraft.world.World;
import net.minecraft.util.text.TextComponentString;
import net.minecraft.util.math.BlockPos;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.command.ICommandSender;
import net.minecraft.command.ICommand;

import java.io.PrintWriter;
import java.io.FileOutputStream;
import java.io.File;
import java.util.Date;
import java.text.SimpleDateFormat;

import java.util.Random;

public class mcreator_logBlocks {

	public static Object instance;

     public String outputFilename;
     public static PrintWriter writer;

	public mcreator_logBlocks() {
	}

	public void load(FMLInitializationEvent event) {
	}

	public void generateNether(World world, Random random, int chunkX, int chunkZ) {
	}

	public void generateSurface(World world, Random random, int chunkX, int chunkZ) {
	}

	public int addFuel(ItemStack fuel) {
		return 0;
	}

	public void registerRenderers() {
	}

	public void serverLoad(FMLServerStartingEvent event) {

		event.registerServerCommand(new CommandlogBlocks());

	}

	public void preInit(FMLPreInitializationEvent event) {
          String timeStamp = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date());
          outputFilename = timeStamp + "_" + "results.csv";
          outputFilename = "results.txt";
          try{
          writer = new PrintWriter(new FileOutputStream(
                              new File(outputFilename), true));
          } catch(Exception e){}
	}

     public static void logBlockActivity(String s){
          try{

               String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
               
               writer.append(s+"," + timeStamp + "\n");
               writer.flush();
               //writer.close();
              } catch (Exception e) {   }

         } 

	class CommandlogBlocks implements ICommand {
		public boolean isUsernameIndex(int var1) {
			return false;
		}

		public boolean checkPermission(MinecraftServer server, ICommandSender var1) {
			return true;
		}

		public java.util.List getAliases() {
			return (java.util.List) (new java.util.ArrayList());
		}

		public java.util.List getTabCompletions(MinecraftServer server, ICommandSender sender, String[] args, BlockPos pos) {
			return (java.util.List) (new java.util.ArrayList());
		}

		public boolean isUsernameIndex(String[] string, int index) {
			return true;
		}

		public String getName() {
			return "logblocks";
		}

		public String getUsage(ICommandSender var1) {
			return "/logblocks [filename]";
		}

		@Override
		public void execute(MinecraftServer server, ICommandSender var1, String[] cmd) {

               try{
                    writer.flush();
                    writer.close();
               } catch (Exception e){}
               
               if(cmd.length == 1 && cmd[0]!=null){
                    String timeStamp = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date());
                    outputFilename = timeStamp + "_" + cmd[0];
                    if(outputFilename.substring(outputFilename.length()-4)!=".csv"){
                         outputFilename = outputFilename + ".csv";
                    }
               }
			try{
                 writer = new PrintWriter(new FileOutputStream(new File(outputFilename), true));
               } catch(Exception e){}

               var1.sendMessage(new TextComponentString("Logging blocks at "+outputFilename));

		}

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
