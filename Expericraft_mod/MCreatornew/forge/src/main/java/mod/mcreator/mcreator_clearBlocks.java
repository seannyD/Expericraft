

import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;

import net.minecraft.world.WorldServer;
import net.minecraft.world.World;
import net.minecraft.util.math.BlockPos;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.init.Blocks;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.command.ICommandSender;
import net.minecraft.command.ICommand;
import net.minecraft.block.Block;

import java.util.Random;

public class mcreator_clearBlocks {

	public static Object instance;

	public mcreator_clearBlocks() {
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

		event.registerServerCommand(new CommandclearBlocks());

	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	class CommandclearBlocks implements ICommand {
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
			return "clearblocks";
		}

		public String getUsage(ICommandSender var1) {
			return "/clearblocks ";
		}

		@Override
		public void execute(MinecraftServer server, ICommandSender var1, String[] cmd) {
			int i = var1.getPosition().getX();
			int j = var1.getPosition().getY();
			int k = var1.getPosition().getZ();
			EntityPlayer entity = (EntityPlayer) var1;

			int x = i;
			int y = j;
			int z = k;

               int h_range = 200; // radius
               int v_range = 6; // radius
               

			World world = null;
			WorldServer[] list = server.worlds;
			for (WorldServer ins : list) {
				if (ins.provider.getDimension() == entity.world.provider.getDimension())
					world = ins;
			}
			if (world == null)
				world = list[0];

               boolean allBlocks = false;
               if(cmd!=null){
                    if(cmd.length > 0){
                         if(cmd[0].equals("all")){
                              allBlocks = true;
                         }
                    }
               }


               for(int search_x = x-h_range; search_x< x+h_range; ++search_x){
                    for(int search_y = y-v_range; search_y< y+v_range; ++search_y){
                         for(int search_z = z-h_range; search_z< z+h_range; ++search_z){
                              //TileEntity block = world.getTileEntity(search_x, search_y, search_z);
                              BlockPos bp  = new BlockPos(search_x, search_y, search_z);
                              Block b = world.getBlockState(bp).getBlock();
                              if(isModBlock(b,allBlocks)){
                                   world.setBlockToAir(bp);
                                   world.setBlockState(bp, Blocks.AIR.getDefaultState(), 3);
                              }
                              // Cut grass
                              if(b == Blocks.TALLGRASS){
                                   world.setBlockToAir(bp);
                                   world.setBlockState(bp, Blocks.AIR.getDefaultState(), 3);
                              }
                              //Location loc = new BlockPos(search_x, search_y, search_z);
                              //Block block = loc.getBlock();
                              //if(block!=null && isModBlock(block)){   
                              //}
                         }
                    }
                    
               }
               
			if (true) {
				world.setBlockToAir(new BlockPos(i, j, k));
			}

			if (true) {
				
			}

		}

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

         public boolean isModBlock(Block b, boolean allBlocks){
          if(b==null){
               return(false);
          }

          String bname = b.getUnlocalizedName();
          // Does name end in "Ground"?
          if(bname.substring(bname.length()-6).equals("Ground")){
               if((!allBlocks) && (bname.equals("tile.BlackGround") || bname.equals("tile.WhiteGround"))){
                    return(false);
               } else{
                    return(true);
               }
          }
          return(false);
          
//          if(b == mcreator_redGround.block){
//               return(true);
//          }
//          if(b == mcreator_blueGround.block){
//               return(true);
//          }
//          if(b == mcreator_greenGround.block){
//               return(true);
//          }
//          if(b == mcreator_orangeGround.block){
//               return(true);
//          }
//          return(false);
          
         }

	}

}
