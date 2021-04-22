/* Skyrim DnD Database
* Nick Rader
* CSC-3210
*/

-- Tables To Database

CREATE TABLE Weapon_Types
(
  WeaponTypeID INT NOT NULL AUTO_INCREMENT,
  WeaponTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (WeaponTypeID)
);

CREATE TABLE Staff_Types
(
  StaffTypeID INT NOT NULL AUTO_INCREMENT,
  StaffTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (StaffTypeID)
);

CREATE TABLE Unique_Weapons
(
  UWeaponID INT NOT NULL AUTO_INCREMENT,
  UWeaponName VARCHAR(255) NOT NULL,
  UWeaponDamage INT NOT NULL,
  UWeaponWeight INT NOT NULL,
  UWeaponValue INT NOT NULL,
  UWeaponDesc VARCHAR(255) NOT NULL,
  WeaponTypeID INT,
  PRIMARY KEY (UWeaponID),
  FOREIGN KEY (WeaponTypeID) REFERENCES Weapon_Types(WeaponTypeID)
);

CREATE TABLE Bound_Weapons
(
  BWeaponID INT NOT NULL AUTO_INCREMENT,
  BWeaponName VARCHAR(255) NOT NULL,
  BWeaponDamage INT NOT NULL,
  MagickaCost INT NOT NULL,
  WeaponTypeID INT NOT NULL,
  PRIMARY KEY (BWeaponID),
  FOREIGN KEY (WeaponTypeID) REFERENCES Weapon_Types(WeaponTypeID)
);

/*CREATE TABLE Perk_Types
(
  PerkTypeID INT NOT NULL AUTO_INCREMENT,
  PerkTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (PerkTypeID)
);

CREATE TABLE Race_Types
(
  RaceTypeID INT NOT NULL AUTO_INCREMENT,
  RaceTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (RaceTypeID)
);

CREATE TABLE Spell_Types
(
  SpellTypeID INT NOT NULL AUTO_INCREMENT,
  SpellTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (SpellTypeID)
);

CREATE TABLE Spell_Difficulties
(
  SpellDiffID INT NOT NULL AUTO_INCREMENT,
  SpellDiffName VARCHAR(255) NOT NULL,
  PRIMARY KEY (SpellDiffID)
);

CREATE TABLE Clothes
(
  ClothesID INT NOT NULL AUTO_INCREMENT,
  ClothesName VARCHAR(255) NOT NULL,
  ClothesWeight INT NOT NULL,
  ClothesValue INT NOT NULL,
  PRIMARY KEY (ClothesID)
);

CREATE TABLE Unique_Clothes
(
  UClothesID INT NOT NULL AUTO_INCREMENT,
  UClothesName VARCHAR(255) NOT NULL,
  UClothesWeight INT NOT NULL,
  UClothesValue INT NOT NULL,
  UClothesDesc VARCHAR(255) NOT NULL,
  PRIMARY KEY (UClothesID)
);

CREATE TABLE Armor_Types
(
  ArmorTypeID INT NOT NULL AUTO_INCREMENT,
  ArmorTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (ArmorTypeID)
);

CREATE TABLE Unique_Armors
(
  UArmorID INT NOT NULL AUTO_INCREMENT,
  UArmorName VARCHAR(255) NOT NULL,
  UArmorDefense INT NOT NULL,
  UArmorWeight INT NOT NULL,
  UArmorValue INT NOT NULL,
  UArmorDesc VARCHAR(255) NOT NULL,
  ArmorTypeID INT NOT NULL,
  PRIMARY KEY (UArmorID),
  FOREIGN KEY (ArmorTypeID) REFERENCES Armor_Types(ArmorTypeID)
);

CREATE TABLE Shields
(
  ShieldID INT NOT NULL AUTO_INCREMENT,
  ShieldName INT NOT NULL,
  ShieldDefense INT NOT NULL,
  ShieldWeight INT NOT NULL,
  ShieldValue INT NOT NULL,
  ArmorTypeID INT NOT NULL,
  PRIMARY KEY (ShieldID),
  FOREIGN KEY (ArmorTypeID) REFERENCES Armor_Types(ArmorTypeID)
);

CREATE TABLE Unique_Shields
(
  UShieldID INT NOT NULL AUTO_INCREMENT,
  UShieldName VARCHAR(255) NOT NULL,
  UShieldDefense INT NOT NULL,
  UShieldWeight INT NOT NULL,
  UShieldValue INT NOT NULL,
  UShieldDesc VARCHAR(255) NOT NULL,
  ArmorTypeID INT NOT NULL,
  PRIMARY KEY (UShieldID),
  FOREIGN KEY (ArmorTypeID) REFERENCES Armor_Types(ArmorTypeID)
);

CREATE TABLE Shouts
(
  ShoutID INT NOT NULL AUTO_INCREMENT,
  ShoutName VARCHAR(255) NOT NULL,
  ShoutDesc VARCHAR(255) NOT NULL,
  ShoutTeirs VARCHAR(255) NOT NULL,
  ShoutCD VARCHAR(255) NOT NULL,
  PRIMARY KEY (ShoutID)
);

CREATE TABLE Power_Types
(
  PowerTypeID INT NOT NULL AUTO_INCREMENT,
  PowerTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (PowerTypeID)
);

CREATE TABLE Ability_Types
(
  AbilityTypeID INT NOT NULL AUTO_INCREMENT,
  AbilityTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (AbilityTypeID)
);

CREATE TABLE Debuff_Types
(
  DebuffTypeID INT NOT NULL AUTO_INCREMENT,
  DebuffTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (DebuffTypeID)
);

CREATE TABLE Enchant_Types
(
  EnchantTypeID INT NOT NULL AUTO_INCREMENT,
  EnchantTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (EnchantTypeID)
);

CREATE TABLE Smithing_Upgrades
(
  SmithUpgradeID INT NOT NULL AUTO_INCREMENT,
  SmithUpgradeName VARCHAR(255) NOT NULL,
  SkillLevelRequire INT NOT NULL,
  WeaponEffect VARCHAR(25) NOT NULL,
  ArmorEffect VARCHAR(25) NOT NULL,
  PRIMARY KEY (SmithUpgradeID)
);

CREATE TABLE Smithing_Types
(
  SmithingTypeID INT NOT NULL AUTO_INCREMENT,
  SmithingTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (SmithingTypeID)
);

CREATE TABLE Items
(
  ItemID INT NOT NULL AUTO_INCREMENT,
  ItemName VARCHAR(255) NOT NULL,
  ItemWeight INT NOT NULL,
  ItemValue INT NOT NULL,
  PRIMARY KEY (ItemID)
);

CREATE TABLE Soul_Gems
(
  SGID INT NOT NULL AUTO_INCREMENT,
  SGName VARCHAR(25) NOT NULL,
  SGChargeAMT INT NOT NULL,
  SGCreatures VARCHAR(255) NOT NULL,
  PRIMARY KEY (SGID)
);

CREATE TABLE Alchemy_Type
(
  ATypeID INT NOT NULL AUTO_INCREMENT,
  ATypeName VARCHAR(25) NOT NULL,
  PRIMARY KEY (ATypeID)
);

CREATE TABLE Restore_Potion_Ranks
(
  RankID INT NOT NULL AUTO_INCREMENT,
  RankName VARCHAR(255) NOT NULL,
  RestoreAMT INT NOT NULL,
  PRIMARY KEY (RankID)
);

CREATE TABLE Cooking_Recipes
(
  CRecipeID INT NOT NULL AUTO_INCREMENT,
  CRecipeItemName VARCHAR(255) NOT NULL,
  CMaterialsRequire VARCHAR(255) NOT NULL,
  RecipeEffect VARCHAR(255) NOT NULL,
  PRIMARY KEY (CRecipeID)
);

CREATE TABLE Food_and_Drink
(
  FDID INT NOT NULL AUTO_INCREMENT,
  FDName VARCHAR(255) NOT NULL,
  FDRestore VARCHAR(255) NOT NULL,
  PRIMARY KEY (FDID)
);
*/
CREATE TABLE Weapons
(
  WeaponID INT NOT NULL AUTO_INCREMENT,
  WeaponName VARCHAR(255) NOT NULL,
  WeaponDamage INT NOT NULL,
  WeaponWeight INT NOT NULL,
  WeaponValue INT NOT NULL,
  WeaponTypeID INT NOT NULL,
  PRIMARY KEY (WeaponID),
  FOREIGN KEY (WeaponTypeID) REFERENCES Weapon_Types(WeaponTypeID)
);

CREATE TABLE Staffs
(
  StaffID INT NOT NULL AUTO_INCREMENT,
  StaffName VARCHAR(255) NOT NULL,
  StaffWeight INT NOT NULL,
  StaffValue INT NOT NULL,
  StaffDesc VARCHAR(255) NOT NULL,
  StaffTypeID INT,
  PRIMARY KEY (StaffID),
  FOREIGN KEY (StaffTypeID) REFERENCES Staff_Types(StaffTypeID)
);
/*
CREATE TABLE Perks
(
  PerkID INT NOT NULL AUTO_INCREMENT,
  PerkName VARCHAR(255) NOT NULL,
  PerkDesc VARCHAR(255) NOT NULL,
  PerkRequired VARCHAR(255) NOT NULL,
  PerkTypeID INT NOT NULL,
  PRIMARY KEY (PerkID),
  FOREIGN KEY (PerkTypeID) REFERENCES Perk_Types(PerkTypeID)
);

CREATE TABLE Spells
(
  SpellID INT NOT NULL AUTO_INCREMENT,
  SpellName VARCHAR(255) NOT NULL,
  SpellDesc VARCHAR(255) NOT NULL,
  SpellMagickaCost INT NOT NULL,
  SpellTypeID INT NOT NULL,
  SpellDiffID INT NOT NULL,
  PRIMARY KEY (SpellID),
  FOREIGN KEY (SpellTypeID) REFERENCES Spell_Types(SpellTypeID),
  FOREIGN KEY (SpellDiffID) REFERENCES Spell_Difficulties(SpellDiffID)
);

CREATE TABLE Armors
(
  ArmorID INT NOT NULL AUTO_INCREMENT,
  ArmorName VARCHAR(255) NOT NULL,
  ArmorDefense INT NOT NULL,
  ArmorWeight INT NOT NULL,
  ArmorValue INT NOT NULL,
  ArmorTypeID INT NOT NULL,
  PRIMARY KEY (ArmorID),
  FOREIGN KEY (ArmorTypeID) REFERENCES Armor_Types(ArmorTypeID)
);

CREATE TABLE Powers
(
  PowerID INT NOT NULL AUTO_INCREMENT,
  PowerName VARCHAR(255) NOT NULL,
  PowerDesc VARCHAR(255) NOT NULL,
  PowerTypeID INT NOT NULL,
  PRIMARY KEY (PowerID),
  FOREIGN KEY (PowerTypeID) REFERENCES Power_Types(PowerTypeID)
);

CREATE TABLE Abilities
(
  AbilityID INT NOT NULL AUTO_INCREMENT,
  AbilityName VARCHAR(255) NOT NULL,
  AbilityDesc VARCHAR(255) NOT NULL,
  AbilityTypeID INT NOT NULL,
  PRIMARY KEY (AbilityID),
  FOREIGN KEY (AbilityTypeID) REFERENCES Ability_Types(AbilityTypeID)
);

CREATE TABLE Debuffs
(
  DebuffID INT NOT NULL AUTO_INCREMENT,
  DebuffName VARCHAR(255) NOT NULL,
  DebuffDesc VARCHAR(255) NOT NULL,
  DebuffFrom VARCHAR(255) NOT NULL,
  DebuffTypeID INT NOT NULL,
  PRIMARY KEY (DebuffID),
  FOREIGN KEY (DebuffTypeID) REFERENCES Debuff_Types(DebuffTypeID)
);

CREATE TABLE Enchants
(
  EnchantID INT NOT NULL AUTO_INCREMENT,
  EnchantName VARCHAR(255) NOT NULL,
  EnchantDesc VARCHAR(255) NOT NULL,
  EnchantTypeID INT NOT NULL,
  PRIMARY KEY (EnchantID),
  FOREIGN KEY (EnchantTypeID) REFERENCES Enchant_Types(EnchantTypeID)
);

CREATE TABLE Smithing_Recipes
(
  SRecipeID INT NOT NULL AUTO_INCREMENT,
  SMaterialsRequire VARCHAR(255) NOT NULL,
  UpgradeMaterial VARCHAR(255) NOT NULL,
  PerkRequire VARCHAR(255) NOT NULL,
  SRecipeItemName VARCHAR(255) NOT NULL,
  SmithingTypeID INT NOT NULL,
  PRIMARY KEY (SRecipeID),
  FOREIGN KEY (SmithingTypeID) REFERENCES Smithing_Types(SmithingTypeID)
);

CREATE TABLE Alchemy
(
  AID INT NOT NULL AUTO_INCREMENT,
  AName VARCHAR(255) NOT NULL,
  AIngredients VARCHAR(300) NOT NULL,
  AEffect VARCHAR(255) NOT NULL,
  ATypeID INT NOT NULL,
  PRIMARY KEY (AID),
  FOREIGN KEY (ATypeID) REFERENCES Alchemy_Type(ATypeID)
);

CREATE TABLE Races
(
  RaceID INT NOT NULL AUTO_INCREMENT,
  RaceStats VARCHAR(255),
  RaceAPName VARCHAR(255),
  RaceAPDesc VARCHAR(255),
  RaceSpells VARCHAR(255),
  RaceTypeID INT,
  SpellID INT,
  PerkID INT,
  PowerID INT,
  AbilityID INT,
  PRIMARY KEY (RaceID),
  FOREIGN KEY (RaceTypeID) REFERENCES Race_Types(RaceTypeID),
  FOREIGN KEY (SpellID) REFERENCES Spells(SpellID),
  FOREIGN KEY (PerkID) REFERENCES Perks(PerkID),
  FOREIGN KEY (PowerID) REFERENCES Powers(PowerID),
  FOREIGN KEY (AbilityID) REFERENCES Abilities(AbilityID)
);
*/
-- Data Insertion

-- Data for Weapon_Types Table
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Battle Axes');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Bows');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Crossbows');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Daggers');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Greatswords');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Maces');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Swords');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('War Axes');
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Warhammers');

-- Data for Staff_Types Table
INSERT INTO Staff_Types (StaffTypeName) VALUES ('Alteration');
INSERT INTO Staff_Types (StaffTypeName) VALUES ('Conjuration');
INSERT INTO Staff_Types (StaffTypeName) VALUES ('Destruction');
INSERT INTO Staff_Types (StaffTypeName) VALUES ('Illusion');
INSERT INTO Staff_Types (StaffTypeName) VALUES ('Restoration');

-- Data for Unique_Weapons Table
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Blade of Woe',12,7,880,'Absorb 10 points of health(40 charges)',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Blade of Sacrifice',10,4,144,'None',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Bloodthorn',8,3,183,'If target you attacked died in the next 2 rounds of battle, fill a soul gem(30 charges)',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dragon Priest Dagger',6,5,9,'None',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Keening',8,4,5,'Abosorb 10 points of either health, mana,or stamina(depending on lowest current value)(30 charges)',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nettlebane',6,10,5,'Does 10 additional points of damage to Sprigians',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Shiv',5,2,5,'None',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Mehrunes Razor',11,3,860,'Roll a d100 and if the result is 1 or 100, instantly kill the target(Can only preform the roll once you attack the target)',4);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Horksbane',10,14,250,'Does 10 additional points of damage to horkers',6);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Mace of Molag Bal',16,18,1257,'Deals 25 points of damage to stamina and magicka, if the target you attack dies in the next 2 rounds of battle, fill a soul gem(40 charges)',6);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord Sword',8,12,13,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Blades Sword',11,10,300,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Bloodscythe',13,10,1859,'With Soulrender also equipped, absorb 10 points of helth(40 charges) ',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Chillrend',13,14,846,'Target takes 30 points of frost damage to health and stamina, roll 1d6 for chance to paralyze target for 1 turn(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dragonbane',12,12,1189,'If a dragon is the target, deal 30 damage, else do 10 shock damage to health and magicka(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Drainheart Sword',11,3,66,'Absorb 15 points of stamina(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Eduj',11,9,330,'Target takes 10 points of frost damage to health and stamina(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Falmer Sword',10,18,67,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Forsworn Sword',10,13,70,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Gauldur Blackblade',11,15,669,'Absorb 25 points of health(30 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ghostblade',8,1,300,'Does 3 additional damage',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Grimsever',12,14,350,'Target takes 15 points of frost damage to health and stamina(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Imperial Sword',8,10,23,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nighttingale Blade',12,13,1424,'Absorb 25 points of health and stamina(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero Sword',11,9,135,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Red Eagles Bane',11,15,345,'Low ranking undead(normal dragur/skeletons) take 10 points of fire damage and flee for 2 turns, coming back after(30 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Red Eagles Fury',8,12,97,'Target takes 5 points of fire damage to health, gives Burn to the target for 2 turns(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Scimitar',11,10,5,'None',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Silver Sword',8,7,100,'Does 5 additional damage against undead',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('The Pale Blade',11,15,452,'Target takes 25 points of frost damage to health and stamina, Low ranking creatures and people(Wolves,Bandits) flee for 2 turns, coming back after(30 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Windshear',11,10,40,'Bash attacks stun enemies for 1 turn(Can only be used once per turn and takes up turn)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Wooden Sword',2,3,25,'N/A(Fell free to use this weapon, though it might be the death of you)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dawnbreaker',12,10,740,'Deals 10 points of fire damage to the target, if the target is undead and dies that turn all nearby undead take 20 points of damage and flee for two turns(40 charges)',7);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord War Axe',9,14,15,'None',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dawnguard Rune Axe',11,13,175,'Does 10 sun damage to undead(and undead only)',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dawnguard War Axe',11,13,55,'Does 5 additional damage to vampires(and vampires only)',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Falmer War Axe',11,21,82,'None',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Forsworn War Axe',11,15,90,'None',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero War Axe',12,11,165,'None',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Okin',12,11,150,'Target takes 10 points of frost damage to health and stamina(40 charges)',8);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Hoarfrost',5,10,946,'Target takes 15 points of frost damage to health and stamina, roll 1d6 for a chance to immobilize target for 1 turn(40 charges)(Can mine ore,obviously not a combat ability)');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Notched Pickaxe',5,10,150,'Target takes 5 points of shock damage to health and magicka(40 charges)(Can mine ore,obviously not a combat ability)');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Pickaxe',5,10,5,'N/A(Can mine ore,obviously not a combat ability)');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Poachers Axe',5,10,32,'Does 3 points of extra damage to animals(and only animals)(Can chop wood,obviously not a combat ability)');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Woodcutters Axe',5,10,5,'N/A(Can chop wood,obviously not a combat ability)');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Fork',1,1,5,'N/A');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc) VALUES ('Knife',2,1,1,'N/A');
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord Battle Axe',18,22,28,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Drainblood Battleaxe',21,5,266,'Absorb 15 points of health(40 charges)',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Headmans Axe',17,11,15,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero Battle Axe',21,20,300,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Wuuthrad',25,25,2000,'Does 10 additional damage against elves',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Rueful Axe',22,10,1183,'Deals 20 points of damage to stamina(40 charges)',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Rueful Axe',22,10,1183,'Deals 20 points of damage to stamina(40 charges)',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord Greatsword',17,18,35,'None',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Bloodskal Blade',21,16,1250,'Upon a successful power attack, release an energy blast to do an additional 30 damage to anyone in front the wielder(40 charges)',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero Greatsword',20,16,250,'None',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Silver Greatsword',17,12,160,'Does 10 additional damage against undead',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Stormfang',17,17,1175,'Target takes 30 points of shock damage to health and magicka(30 charges)',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ebony Blade',11,10,2000,'Absorb 10(up to 40)points of health, add 6 points of absorbtion damage for every friend(or party member) you have slain(max 5 stacks)',5);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Aegisbane',18,24,180,'Target takes 5 points of frost damage to health and stamina(40 charges)',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Champions Cudgel',24,27,1767,'Roll 1d6 for the chance to deal 75 total damage in addtion to your hit from the weapon(40 charges)',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dawnguard Warhammer',22,26,110,'Does 10 additional damage to vampires',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Dawnguard Rune Hammer',22,26,500,'Bashing a surface creates a rune on that surface, that rune does 50 points of fire damage on contact',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('The Longhammer',21,18,90,'This reduced weight of this hammer allows for two attacks per turn',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Trollsbane',20,25,60,'Does 15 points of fire damage to trolls health(and trolls only)',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Volendrung',25,26,1843,'Absorb 50 of stamina(40 charges)',9);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord Bow',8,12,45,'None',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Auriels Bow',13,11,1000,'Target takes 20 points of sun damage, or 60 points to undead(40 charges)',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Bow of the Hunt',10,7,434,'Does 20 points of extra damage to animals(and animals only)',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Drainspell Bow',14,6,458,'Absorb 15 points of magicka(40 charges)',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Falmer Bow',12,15,135,'None',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Forsworn Bow',12,11,145,'None',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Gauldur Blackbow',14,18,530,'Absorb 30 points of magicka(30 charges)',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero Bow',11,7,200,'None',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nightingale Bow',15,13,1409,'Target takes 20 points of frost damage to health and stamina, and 10 points of shock damage to health and magicka(40 charges)',2);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Zephyr',12,10,670,'This rigged bow allows for two attacks per turn',2);

-- Data for Bound Weapons Table
INSERT INTO Bound_Weapons (BWeaponName,BWeaponDamage,MagickaCost,WeaponTypeID) VALUES ('Bound Battleaxe',17,168,1);
INSERT INTO Bound_Weapons (BWeaponName,BWeaponDamage,MagickaCost,WeaponTypeID) VALUES ('Bound Bow',15,206,2);
INSERT INTO Bound_Weapons (BWeaponName,BWeaponDamage,MagickaCost,WeaponTypeID) VALUES ('Bound Dagger',7,32,4);
INSERT INTO Bound_Weapons (BWeaponName,BWeaponDamage,MagickaCost,WeaponTypeID) VALUES ('Bound Sword',9,92,7);

-- Data for Weapons Table 
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Battleaxe',16,20,55,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Battleaxe',18,21,100,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Battleaxe',21,24,520,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Battleaxe',20,23,300,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Battleaxe',19,25,165,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Battleaxe',22,25,900,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Battleaxe',21,23,650,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Battleaxe',23,26,1585,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Battleaxe',25,27,2750,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Battleaxe',26,30,3000,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Battleaxe',21,21,150,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Battleaxe',24,25,2150,1);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Long Bow',6,5,30,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Hunting Bow',7,7,50,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Imperial Bow',9,8,90,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Bow',13,12,470,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Bow',12,10,270,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Bow',10,9,150,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Bow',15,14,820,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Bow',13,11,580,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Bow',17,16,1440,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Bow',19,18,2500,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Bow',20,20,2725,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Bow',17,15,1800,2);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Crossbow',19,14,120,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Imperial Crossbow',20,15,150,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Crossbow',22,20,350,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Crossbow',21,16,325,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Crossbow',23,21,1250,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Crossbow',25,23,2500,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Crossbow',27,25,2700,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Crossbow',28,27,2950,3);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Dagger',4,2,10,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Dagger',5,3,18,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Dagger',8,4,95,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Dagger',7,4,55,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Dagger',6,3,30,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Dagger',9,5,165,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Dagger',8,4,115,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Dagger',10,5,290,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Dagger',11,6,500,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Dagger',12,7,600,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Dagger',8,3,25,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Dagger',10,5,395,4);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Greatsword',15,16,50,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Greatsword',17,17,90,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Greatsword',20,20,470,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Greatsword',19,19,270,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Greatsword',18,18,75,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Greatsword',21,22,820,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Greatsword',20,19,585,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Greatsword',22,22,1440,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Greatsword',24,23,2500,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Greatsword',25,27,2725,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Greatsword',20,17,140,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Greatsword',23,21,1970,5);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Mace',9,13,35,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Mace',10,14,65,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Mace',13,17,330,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Mace',12,16,190,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Mace',11,15,105,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Mace',14,18,575,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Mace',13,16,410,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Mace',16,19,1000,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Mace',17,20,1750,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Mace',18,22,2000,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Mace',14,14,100,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Mace',16,18,1375,6);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Sword',7,9,25,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Sword',8,10,45,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Sword',11,13,235,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Sword',10,12,135,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Sword',9,11,75,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Sword',12,14,410,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Sword',11,12,290,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Sword',13,15,720,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Sword',14,16,1250,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Sword',15,19,1500,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Sword',11,10,70,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Sword',13,14,985,7);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron War Axe',8,11,30,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel War Axe',9,12,55,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven War Axe',12,15,280,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven War Axe',11,14,165,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish War Axe',10,13,90,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass War Axe',14,16,490,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic War Axe',12,14,350,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony War Axe',15,17,865,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric War Axe',16,18,1500,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone War Axe',17,21,1700,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel War Axe',12,12,80,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim War Axe',15,16,1180,8);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Iron Warhammer',18,24,90,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Steel Warhammer',20,25,110,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Elven Warhammer',23,28,565,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dwarven Warhammer',22,27,325,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Orcish Warhammer',21,25,180,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Glass Warhammer',24,29,985,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Nordic Warhammer',23,27,700,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Ebony Warhammer',25,30,1725,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Daedric Warhammer',27,30,4000,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Dragonbone Warhammer',28,33,4275,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Skyforge Steel Warhammer',23,25,175,9);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Stalhrim Warhammer',26,29,2850,9);

-- Data for Staffs Table
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Magelight',8,239,'Creates a ball of light in a casted area for a certain amount of time(40 charges)',1);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Paralysis',8,3965,'Paralye a target for 1 turn(40 charges)',1);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Banashing',8,926,'Banishes weaker leveled daedra(removes any daedra below level 30 from battle)(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Daedric Command',8,926,'Powerful raised creatures(up to level 50) are put under your control for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Dread Zombies',8,1248,'Reanimate very powerful zombies(up to level 70) to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Expulsions',8,2092,'Banishes higher leveled daedra(removes any daedra below level 50 from battle)(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Reanimation',8,949,'Reanimate weak zombies(up to level 30) to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Revenants',8,824,'Reanimate powerful zombies(up to level 50) to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Soul Trapping',8,986,'If the target you had put soul trap on died in the next 2 rounds of battle, fill a soul gem(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of the Familiar',8,926,'Summons a Familiar to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of the Flame Atronach',8,727,'Summons a Flame Atronach to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of the Frost Atronach',8,1106,'Summons a Frost Atronach to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of the Storm Atronach',8,1656,'Summons a Storm Atronach to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Zombies',8,449,'Reanimate weak zombies(up to level 10) to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Fireballs',8,1309,'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Firebolts',8,456,'Fires an blast dealing 25 points of fire damage to a target, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Flames',8,183,'Spouts fire dealing 8 points of fire damage to a target, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Frostbite',8,198,'A cold blast dealing 8 points of frost damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Chain Lightning',8,1494,'Fire a lightning bolt dealing 40 points of shock damage to Health and Magicka, does matching damage to one nearby enemy(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Ice Spikes',8,511,'A spike of ice that does 25 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Ice Storms',8,1401,'A freezing whirlwind that does 40 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Icy Spear',8,2931,'A spear of ice that does 60 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Incineration',8,2750,'A blast of fire that does 60 points of damage, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Lightning Bolts',8,538,'Fire a lightning bolt dealing 25 points of shock damage to Health and Magicka(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Sparks',8,218,'Fires a spark of lightning that deals 8 points of damage to Health and Magicka(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Flame Wall',8,1310,'Spouts a wall of fire on the ground that deals 50 points of damage to targets inside,giving them Burn as well,lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Frost Wall',8,1468,'Spouts a wall of ice on the ground thats deals 50 points of damage to Health and Stamina to targets inside,lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Storm Wall',8,1531,'Spouts a wall of lightning on the ground that deals 50 points of damage to Health and Magicka to targets inside, lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Grand Staff of Charming',8,1893,'Creatures and People up to level 15 are immobilized for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Calm',8,1153,'Creatures and People up to level 8 are immobilized for 1 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Courage',8,79,'Target wont flee from battle for 2 turns and gets 5 additional Health and Stamina(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Fear',8,2443,'Creatures and People up to level 8 will flee from battle for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Frenzy',8,1149,'Creatures and People up to level 8 will attack anyone nearby for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Fury',8,803,'Creatures and People up to level 4 will attack anyone nearby for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Inspiration',8,317,'Target wont flee from battle for 2 turns and gets 10 additional Health and Stamina(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Tandil',8,2530,'Creatures and People up to level 12 flee from combat for 1 turn(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Grand Staff of Repulsion',8,1289,'All undead up to level 8 in a group flee for 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Grand Staff of Turning',8,1520,'Targeted Undead up to level 12 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Minor Staff of Turning',8,556,'Targeted Undead up to level 4 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Mending',8,613,'Heals target for 45 points(Undead, Atronachs, and Machines are unaffected)(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Repulsion',8,675,'All undead up to level 4 in a group flee for 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Healing Hand',8,198,'Heals target for 10 points(Undead, Atronachs, and Machines are unaffected)(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,StaffTypeID) VALUES ('Staff of Turning',5,1036,'Targeted Undead up to level 8 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Eye of Melka',8,1234,'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives the target Burn for 2 turns(40 charges)');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Forsworn Staff',8,183,'Target takes 8 points of fire damage, gives the target Burn for 2 turns(40 charges)');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Staff of Magnus',8,2011,'Abosrb 50 points of magicka from the target, if the target has no magicka left the target takes 50 points of damage(40 charges)');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Aetherial Staff',8,1970,'Summons a Dwarven Spider or Dwarven Sphere to fight for you for 2 turns');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Sanguine Rose',10,2087,'Summons a Dremora of the same level as you to fight alongside your party for 2 turns(50 charges)');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Wabbajak',10,1211,'Deals 27 Damage to Target; A blast from this staff has unpredictable effects(50 charges)');
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc) VALUES ('Skull of Corruption',10,1680,'Deals 20(up to 50) points of damage, amount of damage goes up by 10 for every dream collected from sleeping people(max 3 people)(50 charges)');

