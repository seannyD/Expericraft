package com.example.examplemod;

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

import com.example.examplemod.mcreator_greenGround.BlockGreenGround;

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
               
               // detect custom block hardness settings
               boolean hard = false;
               float hardness_setting = 0.8F;//2.4F;
               if(cmd!=null){
                   if(cmd.length>0){
                        if(cmd[0].equals("hard")){
                            hard = true;
	                        if(cmd.length>1){
	                        	try{
	                        	hardness_setting = Float.parseFloat(cmd[1]);
	                        	} catch(Exception e){
	                        		var1.sendMessage(new TextComponentString("COULD NOT RECOGNISE HARDNESS VALUE, setting to default hard ..."));
	                        		hardness_setting = 2.4F;
	                        	}
	                        } else{
	                        	// 2.4 by default = about 3.5 seconds to break
	                        	hardness_setting = 2.4F;
	                        }
                        }
                   }
              }

               
               // APPLY SETTINGS
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
                    int h_range = 400;
                    int v_range = 30;
     
                    AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);
                    
                    List<Entity> moblist = world.getEntitiesInAABBexcluding(entity, range, null);
                    var1.sendMessage(new TextComponentString("mobs in range = " + String.valueOf(moblist.size())));
                      if (!moblist.isEmpty()) {
                          
                          for (Entity entry : moblist) {
                              //var1.sendMessage(new TextComponentString("mob: " + entry.getName()));
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
                   Blocks.BRICK_BLOCK.setHardness(200F);
                   Blocks.OAK_STAIRS.setHardness(200F);
                   Blocks.PLANKS.setHardness(200F);
                   
                   // Set black and white blocks to hard
                   ExampleMod.instance.mcreator_21.block.setHardness(200F);
                   ExampleMod.instance.mcreator_23.block.setHardness(200F);
                   
                   // Set custom block hardness
                   if(hard){
                	   var1.sendMessage(new TextComponentString("Setting custom blocks to HARD : " + String.valueOf(hardness_setting)));
                   } else{
                	   var1.sendMessage(new TextComponentString("Setting custom blocks to SOFT : " + String.valueOf(hardness_setting)));
                   }
            	   ExampleMod.instance.mcreator_0.block.setHardness(hardness_setting);   
            	   ExampleMod.instance.mcreator_1.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_2.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_3.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_13.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_14.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_22.block.setHardness(hardness_setting);
            	   ExampleMod.instance.mcreator_24.block.setHardness(hardness_setting);
                   
                   
                   
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
                   Blocks.BRICK_BLOCK.setHardness(2F);
                   Blocks.OAK_STAIRS.setHardness(2F);
                   Blocks.PLANKS.setHardness(2F);
                   
                   // Set black and white blocks to soft
                   ExampleMod.instance.mcreator_21.block.setHardness(0.8F);
                   ExampleMod.instance.mcreator_23.block.setHardness(0.8F);
                   
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
