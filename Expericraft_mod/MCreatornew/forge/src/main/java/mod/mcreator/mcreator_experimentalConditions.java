package mod.mcreator;

import net.minecraftforge.fml.common.event.FMLServerStartingEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;

import net.minecraft.world.WorldServer;
import net.minecraft.world.World;
import net.minecraft.world.GameType;
import net.minecraft.util.text.TextComponentString;
import net.minecraft.util.math.BlockPos;
import net.minecraft.server.MinecraftServer;
import net.minecraft.item.ItemStack;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.command.ICommandSender;
import net.minecraft.command.ICommand;


import net.minecraft.block.state.IBlockState;
import net.minecraft.world.EnumDifficulty;
import net.minecraft.init.Blocks;

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class mcreator_experimentalConditions {

	public static Object instance;

     public static boolean infiniteModBlocks = false;

     public static Timer timer;

	public mcreator_experimentalConditions() {
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

		event.registerServerCommand(new CommandexperimentalConditions());

	}

	public void preInit(FMLPreInitializationEvent event) {
	}

	class CommandexperimentalConditions implements ICommand {
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
			return "experiment";
		}

		public String getUsage(ICommandSender var1) {
			return "/experiment [off]";
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

			World world = null;
			WorldServer[] list = server.worlds;
			for (WorldServer ins : list) {
				if (ins.provider.getDimension() == entity.world.provider.getDimension())
					world = ins;
			}
			if (world == null)
				world = list[0];
               boolean setOn = true;

               if(cmd!=null){
                    if(cmd.length>0){
                         if(cmd[0].equals("off")){
                              setOn = false;
                         }
                    }
               }

               if(setOn){

                    infiniteModBlocks = true;
                    
     			var1.sendMessage(new TextComponentString("Applying experimental settings"));
     
     			if (entity instanceof EntityPlayer)
     					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
                    
                    // stop rain
                    world.getWorldInfo().setCleanWeatherTime(10000000);
                    // Set to noon constantly
                    world.setWorldTime(6000); // set to noon

                    //timer = new Timer();
                    //timer.scheduleAtFixedRate(new TimerTask() {
                     // @Override
                     // public void run() {
                     //     Minecraft.getMinecraft().world.setWorldTime(6000);
                     // }
                     //}, 0, 60000);

                    
                    // set to peaceful mode
                    world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);
     
                    //world.scheduleUpdate(null, null, 10000);    
     
                    // kill all mobs in range
                    int h_range = 200;
                    int v_range = 30;
     
                    AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);
                    
                    List<Entity> moblist = world.getEntitiesInAABBexcluding(entity, range, null);
                    var1.sendMessage(new TextComponentString("mobs in range = " + String.valueOf(moblist.size())));
                      if (!moblist.isEmpty()) {
                          
                          for (Entity entry : moblist) {
                              var1.sendMessage(new TextComponentString("mob: " + entry.getName()));
                              if (!(entry instanceof EntityCreature)) {
                                  continue;
                              }
                              EntityCreature mob = (EntityCreature) entry;
                              mob.setDead();
                          }
                      }
     
                   // Make Fences, gates and grass invincible
                   Blocks.OAK_FENCE.setHardness(200F);
                   Blocks.OAK_FENCE_GATE.setHardness(200F);
                   Blocks.GRASS.setHardness(200F);
                   Blocks.DIRT.setHardness(200F);
              } else{
                   infiniteModBlocks = false;
                   if (entity instanceof EntityPlayer){
                         ((EntityPlayer) entity).setGameType(GameType.CREATIVE);
                   }
                   var1.sendMessage(new TextComponentString("Turning off experimental settings"));
                   Blocks.OAK_FENCE.setHardness(2F);
                   Blocks.OAK_FENCE_GATE.setHardness(2F);
                   Blocks.GRASS.setHardness(0.5F);
                   Blocks.DIRT.setHardness(0.5F);

                   //timer.cancel();
                   
              }

              

               
		}

//          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
//               int randomNum = rand.nextInt(16000);
//                world.setWorldTime(randomNum); // set to noon
//          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
