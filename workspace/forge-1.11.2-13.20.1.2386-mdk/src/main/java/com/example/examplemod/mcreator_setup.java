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
import net.minecraft.inventory.IInventory;
import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import com.example.examplemod.mcreator_greenInvisible.BlockGreenInvisible;
import com.example.examplemod.mcreator_orangeInvisible.BlockOrangeInvisible;
import com.example.examplemod.mcreator_redInvisible.BlockRedInvisible;
import com.example.examplemod.mcreator_blueInvisible.BlockBlueInvisible;

public class mcreator_setup {

	public static Object instance;

     public static boolean infiniteModBlocks = false;

     public static Timer timer;

	public mcreator_setup() {
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
			return "setup";
		}

		public String getUsage(ICommandSender var1) {
			return "/setup [A|B]";
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
			
			// Remove items
			
            
			String playerType = "A";

               if(cmd!=null){
                    if(cmd.length>0){
                         if(cmd[0].equals("B")){
                              playerType = "B";
                         }
                    }
               }
               
               if (entity instanceof EntityPlayer){
            	   EntityPlayer player = (EntityPlayer) entity;
            	   IInventory inv = player.inventory;
            	   // Remove all items from inventory
            	   player.inventory.clear();
            	   
            	   //IInventory inv = player.inventory;
            	   //for(int ix=0; ix < inv.getSizeInventory(); ix++) {
            	   //	if(inv.getStackInSlot(ix) != null){
            	   //		//ItemStack jx = inv.getStackInSlot(ix);
            	   //		inv.setInventorySlotContents(ix, null);
            	   //		
            	   //	}
            	   //}
            	   
            	   
	               if(playerType.equals("A")){
	     			var1.sendMessage(new TextComponentString("Setting up player A"));
	     			player.setPosition(-42.0, 73.0, -14.0);
	     			ItemStack stackA1 = new ItemStack(new BlockGreenInvisible(), 64);
	     			ItemStack stackA2 = new ItemStack(new BlockOrangeInvisible(), 64);
	     			inv.setInventorySlotContents(0, stackA1);
	     			inv.setInventorySlotContents(1, stackA2);
	     			
	               }
	               if(playerType.equals("B")){
	     			var1.sendMessage(new TextComponentString("Setting up player B"));
	     			player.setPosition(-42.0, 73.0, -6.0);
	     			ItemStack stackB1 = new ItemStack(new BlockRedInvisible(), 64);
	     			ItemStack stackB2 = new ItemStack(new BlockBlueInvisible(), 64);
	     			inv.setInventorySlotContents(0, stackB1);
	     			inv.setInventorySlotContents(1, stackB2);
	               }
               
              

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
