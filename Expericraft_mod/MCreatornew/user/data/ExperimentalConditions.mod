�� sr  co.pylo.mcreator.SavedDataVector        L vt Ljava/util/Vector;xpsr java.util.Vectorٗ}[�;� I capacityIncrementI elementCount[ elementDatat [Ljava/lang/Object;xp       ur [Ljava.lang.Object;��X�s)l  xp   (sr )co.pylo.mcreator.SavedDataVector$DataUnit        L keyt Ljava/lang/String;L this$0t "Lco/pylo/mcreator/SavedDataVector;L valuet Ljava/lang/Object;xpt nameq ~ t ExperimentalConditionssq ~ t ppa1tq ~ t 
experimentsq ~ t ppa2tq ~ t 
experimentsq ~ t ppa3tq ~ t Applying experimental settingssq ~ t addhhq ~ sq ~  sq ~        uq ~    
sq ~ t codeq ~ t f
if(true){
if(entity instanceof EntityPlayer)((EntityPlayer)entity).setGameType(GameType.SURVIVAL);
}
sq ~ t lsq ~ t <html>Change gamemode<br>sq ~ t dlq ~ sr java.lang.Boolean� r�՜�� Z valuexppppppppxsq ~ t 
codeLockedq ~ sq ~ %sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
		}

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               world.scheduleUpdate(var1.getPosition(), this, 10000);     

               
		}

          @Override
          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
                world.setWorldTime(6000); // set to noon
          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

net.minecraft.block.state.IBlockState

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               world.scheduleUpdate(var1.getPosition(), null, 10000);     

               
		}

          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
                world.setWorldTime(6000); // set to noon
          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               world.scheduleUpdate(var1.getPosition(), null, 10000);     

               
		}

          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
                world.setWorldTime(6000); // set to noon
          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               world.scheduleUpdate(null, null, 10000);     

               
		}

          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
                world.setWorldTime(6000); // set to noon
          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               world.scheduleUpdate(null, null, 10000);     

               
		}

          public void updateTick(World world, BlockPos pos, IBlockState state, Random rand) {
               int randomNum = rand.nextInt(16000);
                world.setWorldTime(randomNum); // set to noon
          }

		public int compareTo(ICommand c) {
			return getName().compareTo(c.getName());
		}

	}

}
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon

               //world.scheduleUpdate(null, null, 10000);     

               
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
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);

               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);     

               
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
sq ~ t actualModCodeq ~ t�

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

import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);     

               
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
sq ~ t actualModCodeq ~ tp

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

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);    

               // kill all mobs in range
               int h_range = 200;
               int v_range = 30;

               AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);
               
               List<Entity> moblist = world.getEntitiesInAABBexcluding(null, range, IMob.MOB_SELECTOR);
                 if (!moblist.isEmpty()) {
                     
                     for (Entity entry : moblist) {
                         if (!(entry instanceof EntityCreature)) {
                             continue;
                         }
                         EntityCreature mob = (EntityCreature) entry;
                         mob.setDead();
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
sq ~ t actualModCodeq ~ t�

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

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);    

               // kill all mobs in range
               int h_range = 200;
               int v_range = 30;

               AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);
               
               List<Entity> moblist = world.getEntitiesInAABBexcluding(null, range, IMob.MOB_SELECTOR);
                 if (!moblist.isEmpty()) {
                     
                     for (Entity entry : moblist) {
                         if (!(entry instanceof EntityCreature)) {
                             continue;
                         }
                         EntityCreature mob = (EntityCreature) entry;
                         mob.setDead();
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
sq ~ t actualModCodeq ~ tW

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

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);    

               // kill all mobs in range
               int h_range = 200;
               int v_range = 30;

               AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);


               var1.sendMessage(new TextComponentString("mobs in range = " + String.valueOf(moblist.size())));
               
               List<Entity> moblist = world.getEntitiesInAABBexcluding(null, range, IMob.MOB_SELECTOR);
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
sq ~ t actualModCodeq ~ tg

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

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
               // set to peaceful mode
               world.getWorldInfo().setDifficulty(EnumDifficulty.PEACEFUL);

               //world.scheduleUpdate(null, null, 10000);    

               // kill all mobs in range
               int h_range = 200;
               int v_range = 30;

               AxisAlignedBB range = new AxisAlignedBB(x - h_range, y - v_range, z - h_range, x + h_range, y + v_range, z + h_range);


               
               
               List<Entity> moblist = world.getEntitiesInAABBexcluding(null, range, IMob.MOB_SELECTOR);
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
sq ~ t actualModCodeq ~ tJ

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

import net.minecraft.util.math.AxisAlignedBB;
import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityCreature;
import net.minecraft.entity.monster.IMob;


import java.util.Random;
import java.util.List;

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
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
sq ~ t actualModCodeq ~ tr

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

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
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
              Blocks.OAK_FENCE.setResistance(200F);
              Blocks.OAK_FENCE_GATE.setResistance(200F);
              Blocks.GRASS.setResistance(200F);
              Blocks.DIRT.setResistance(200F);

               
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
sq ~ t actualModCodeq ~ t_

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

public class mcreator_experimentalConditions {

	public static Object instance;

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
			return "/experiment";
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

			var1.sendMessage(new TextComponentString("Applying experimental settings"));

			if (entity instanceof EntityPlayer)
					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
               
               // stop rain
               world.getWorldInfo().setCleanWeatherTime(1000000);
               world.setWorldTime(6000); // set to noon
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
sq ~ t actualModCodeq ~ tF

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

public class mcreator_experimentalConditions {

	public static Object instance;

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
               var boolean setOn = true;

               if(cmd!=null){
                    if(cmd.length>0){
                         if(cmd[0].equals("off")){
                              setOn = false;
                         }
                    }
               }

               if(setOn){
     			var1.sendMessage(new TextComponentString("Applying experimental settings"));
     
     			if (entity instanceof EntityPlayer)
     					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
                    
                    // stop rain
                    world.getWorldInfo().setCleanWeatherTime(1000000);
                    world.setWorldTime(6000); // set to noon
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
                   if (entity instanceof EntityPlayer){
                         ((EntityPlayer) entity).setGameType(GameType.CREATIVE);
                   }
                   var1.sendMessage(new TextComponentString("Turning off experimental settings"));
                   Blocks.OAK_FENCE.setHardness(2F);
                   Blocks.OAK_FENCE_GATE.setHardness(2F);
                   Blocks.GRASS.setHardness(0.5);
                   Blocks.DIRT.setHardness(0.5);
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
sq ~ t actualModCodeq ~ tB

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

public class mcreator_experimentalConditions {

	public static Object instance;

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
     			var1.sendMessage(new TextComponentString("Applying experimental settings"));
     
     			if (entity instanceof EntityPlayer)
     					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
                    
                    // stop rain
                    world.getWorldInfo().setCleanWeatherTime(1000000);
                    world.setWorldTime(6000); // set to noon
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
                   if (entity instanceof EntityPlayer){
                         ((EntityPlayer) entity).setGameType(GameType.CREATIVE);
                   }
                   var1.sendMessage(new TextComponentString("Turning off experimental settings"));
                   Blocks.OAK_FENCE.setHardness(2F);
                   Blocks.OAK_FENCE_GATE.setHardness(2F);
                   Blocks.GRASS.setHardness(0.5);
                   Blocks.DIRT.setHardness(0.5);
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
sq ~ t actualModCodeq ~ tD

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

public class mcreator_experimentalConditions {

	public static Object instance;

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
     			var1.sendMessage(new TextComponentString("Applying experimental settings"));
     
     			if (entity instanceof EntityPlayer)
     					((EntityPlayer) entity).setGameType(GameType.SURVIVAL);
                    
                    // stop rain
                    world.getWorldInfo().setCleanWeatherTime(1000000);
                    world.setWorldTime(6000); // set to noon
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
                   if (entity instanceof EntityPlayer){
                         ((EntityPlayer) entity).setGameType(GameType.CREATIVE);
                   }
                   var1.sendMessage(new TextComponentString("Turning off experimental settings"));
                   Blocks.OAK_FENCE.setHardness(2F);
                   Blocks.OAK_FENCE_GATE.setHardness(2F);
                   Blocks.GRASS.setHardness(0.5F);
                   Blocks.DIRT.setHardness(0.5F);
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
sq ~ t actualModCodeq ~ t�

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

public class mcreator_experimentalConditions {

	public static Object instance;

     public static boolean infiniteModBlocks = false;

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
                    world.getWorldInfo().setCleanWeatherTime(1000000);
                    world.setWorldTime(6000); // set to noon
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
                   if (entity instanceof EntityPlayer){
                         ((EntityPlayer) entity).setGameType(GameType.CREATIVE);
                   }
                   var1.sendMessage(new TextComponentString("Turning off experimental settings"));
                   Blocks.OAK_FENCE.setHardness(2F);
                   Blocks.OAK_FENCE_GATE.setHardness(2F);
                   Blocks.GRASS.setHardness(0.5F);
                   Blocks.DIRT.setHardness(0.5F);
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
sq ~ t actualModCodeq ~ t�

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

public class mcreator_experimentalConditions {

	public static Object instance;

     public static boolean infiniteModBlocks = false;

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
                    world.getWorldInfo().setCleanWeatherTime(1000000);
                    world.setWorldTime(6000); // set to noon
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
sq ~ t actualModCodeq ~ t

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
sq ~ t actualModCodeq ~ t

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
pppppppppppx