/* ESTT Database
* Nick Rader
*/

-- Tables To Database

CREATE TABLE Weapon_Types
(
  WeaponTypeID INT NOT NULL AUTO_INCREMENT,
  WeaponTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (WeaponTypeID)
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

CREATE TABLE Perk_Types
(
  PerkTypeID INT NOT NULL AUTO_INCREMENT,
  PerkTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (PerkTypeID)
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
  ShieldName VARCHAR(255) NOT NULL,
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

CREATE TABLE Recipe_Types
(
  RecipeTypeID INT NOT NULL AUTO_INCREMENT,
  RecipeTypeName VARCHAR(255) NOT NULL,
  PRIMARY KEY (RecipeTypeID)
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
  SGCreatures VARCHAR(300) NOT NULL,
  PRIMARY KEY (SGID)
);

CREATE TABLE Alchemy_Types
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

CREATE TABLE FD_Types
(
  FDTYPEID INT NOT NULL AUTO_INCREMENT,
  FDTYPEName VARCHAR(255) NOT NULL,
  PRIMARY KEY (FDTYPEID)
);

CREATE TABLE Food_and_Drink
(
  FDID INT NOT NULL AUTO_INCREMENT,
  FDName VARCHAR(255) NOT NULL,
  FDRestore VARCHAR(255) NOT NULL,
  FDTYPEID INT NOT NULL,
  PRIMARY KEY (FDID),
  FOREIGN KEY (FDTYPEID) REFERENCES FD_Types(FDTYPEID)
);

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
  SpellTypeID INT,
  PRIMARY KEY (StaffID),
  FOREIGN KEY (SpellTypeID) REFERENCES Spell_Types(SpellTypeID)
);

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
  SRecipeItemName VARCHAR(255) NOT NULL,
  SMaterialsRequire VARCHAR(255) NOT NULL,
  UpgradeMaterial INT, 
  PerkRequire INT,
  SmithingTypeID INT NOT NULL,
  RecipeTypeID INT,
  PRIMARY KEY (SRecipeID),
  FOREIGN KEY (SmithingTypeID) REFERENCES Smithing_Types(SmithingTypeID),
  FOREIGN KEY (RecipeTypeID) REFERENCES Recipe_Types(RecipeTypeID),
  FOREIGN KEY (UpgradeMaterial) REFERENCES Items(ItemID),
  FOREIGN KEY (PerkRequire) REFERENCES Perks(PerkID)
);

CREATE TABLE Alchemy
(
  AID INT NOT NULL AUTO_INCREMENT,
  AName VARCHAR(255) NOT NULL,
  AIngredients VARCHAR(300) NOT NULL,
  AEffect VARCHAR(255) NOT NULL,
  ATypeID INT NOT NULL,
  PRIMARY KEY (AID),
  FOREIGN KEY (ATypeID) REFERENCES Alchemy_Types(ATypeID)
);

CREATE TABLE Races
(
  RaceID INT NOT NULL AUTO_INCREMENT,
  RaceName VARCHAR(255),
  RaceStartStats VARCHAR(255),
  RaceStartSpells VARCHAR(255),
  RaceAbility VARCHAR(255),
  RacePower VARCHAR(255),
  PRIMARY KEY (RaceID)
);

CREATE TABLE Emails
(
  EmailID INT NOT NULL AUTO_INCREMENT,
  Email VARCHAR(255),
  PRIMARY KEY (EmailID)
);

-- Data Insertion

-- Data for Emails Table
INSERT INTO Emails (Email) VALUES ('merihuff@gmail.com');
INSERT INTO Emails (Email) VALUES ('travis.b.stop@gmail.com');
INSERT INTO Emails (Email) VALUES ('wirtha12@gmail.com');

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
INSERT INTO Weapon_Types (WeaponTypeName) VALUES ('Other');

-- Data for Spell_Types Table
INSERT INTO Spell_Types (SpellTypeName) VALUES ('Alteration');
INSERT INTO Spell_Types (SpellTypeName) VALUES ('Conjuration');
INSERT INTO Spell_Types (SpellTypeName) VALUES ('Destruction');
INSERT INTO Spell_Types (SpellTypeName) VALUES ('Illusion');
INSERT INTO Spell_Types (SpellTypeName) VALUES ('Restoration');

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
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Hoarfrost',5,10,946,'Target takes 15 points of frost damage to health and stamina, roll 1d6 for a chance to immobilize target for 1 turn(40 charges)(Can mine ore,obviously not a combat ability)',10);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Notched Pickaxe',5,10,150,'Target takes 5 points of shock damage to health and magicka(40 charges)(Can mine ore,obviously not a combat ability)',10);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Poachers Axe',5,10,32,'Does 3 points of extra damage to animals(and only animals)(Can chop wood,obviously not a combat ability)',10);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Ancient Nord Battle Axe',18,22,28,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Drainblood Battleaxe',21,5,266,'Absorb 15 points of health(40 charges)',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Headmans Axe',17,11,15,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Nord Hero Battle Axe',21,20,300,'None',1);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Wuuthrad',25,25,2000,'Does 10 additional damage against elves',1);
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
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Enhanced Crossbow',19,15,200,'Attacks ignore 50% armor',3);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Enhanced Dwarven Crossbow',22,21,550,'Attacks ignore 50% armor',3);
INSERT INTO Unique_Weapons (UWeaponName,UWeaponDamage,UWeaponWeight,UWeaponValue,UWeaponDesc,WeaponTypeID) VALUES ('Enhanced Nordic Crossbow',23,22,1400,'Attacks ignore 50% armor',3);

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
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Pickaxe',5,10,5,10);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Woodcutters Axe',5,10,5,10);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Fork',1,1,5,10);
INSERT INTO Weapons (WeaponName,WeaponDamage,WeaponWeight,WeaponValue,WeaponTypeID) VALUES ('Knife',2,1,1,10);

-- Data for Staffs Table
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Magelight',8,239,'Creates a ball of light in a casted area for a certain amount of time(40 charges)',1);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Paralysis',8,3965,'Paralye a target for 1 turn(40 charges)',1);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Banashing',8,926,'Banishes weaker leveled daedra(removes any daedra below level 30 from battle)(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Daedric Command',8,926,'Powerful raised creatures(up to level 50) are put under your control for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Dread Zombies',8,1248,'Reanimate very powerful zombies(up to level 70) to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Expulsions',8,2092,'Banishes higher leveled daedra(removes any daedra below level 50 from battle)(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Reanimation',8,949,'Reanimate weak zombies(up to level 30) to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Revenants',8,824,'Reanimate powerful zombies(up to level 50) to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Soul Trapping',8,986,'If the target you had put soul trap on died in the next 2 rounds of battle, fill a soul gem(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of the Familiar',8,926,'Summons a Familiar to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of the Flame Atronach',8,727,'Summons a Flame Atronach to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of the Frost Atronach',8,1106,'Summons a Frost Atronach to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of the Storm Atronach',8,1656,'Summons a Storm Atronach to fight for you for 2 turns(30 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Zombies',8,449,'Reanimate weak zombies(up to level 10) to fight for you for 2 turns(40 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Fireballs',8,1309,'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Firebolts',8,456,'Fires an blast dealing 25 points of fire damage to a target, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Flames',8,183,'Spouts fire dealing 8 points of fire damage to a target, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Frostbite',8,198,'A cold blast dealing 8 points of frost damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Chain Lightning',8,1494,'Fire a lightning bolt dealing 40 points of shock damage to Health and Magicka, does matching damage to one nearby enemy(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Ice Spikes',8,511,'A spike of ice that does 25 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Ice Storms',8,1401,'A freezing whirlwind that does 40 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Icy Spear',8,2931,'A spear of ice that does 60 points of Frost Damage to Health and Stamina(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Incineration',8,2750,'A blast of fire that does 60 points of damage, gives Burn to target(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Lightning Bolts',8,538,'Fire a lightning bolt dealing 25 points of shock damage to Health and Magicka(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Sparks',8,218,'Fires a spark of lightning that deals 8 points of damage to Health and Magicka(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Flame Wall',8,1310,'Spouts a wall of fire on the ground that deals 50 points of damage to targets inside,giving them Burn as well,lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Frost Wall',8,1468,'Spouts a wall of ice on the ground thats deals 50 points of damage to Health and Stamina to targets inside,lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Storm Wall',8,1531,'Spouts a wall of lightning on the ground that deals 50 points of damage to Health and Magicka to targets inside, lasts for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Grand Staff of Charming',8,1893,'Creatures and People up to level 15 are immobilized for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Calm',8,1153,'Creatures and People up to level 8 are immobilized for 1 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Courage',8,79,'Target wont flee from battle for 2 turns and gets 5 additional Health and Stamina(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Fear',8,2443,'Creatures and People up to level 8 will flee from battle for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Frenzy',8,1149,'Creatures and People up to level 8 will attack anyone nearby for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Fury',8,803,'Creatures and People up to level 4 will attack anyone nearby for 2 turns(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Inspiration',8,317,'Target wont flee from battle for 2 turns and gets 10 additional Health and Stamina(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Tandil',8,2530,'Creatures and People up to level 12 flee from combat for 1 turn(40 charges)',4);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Grand Staff of Repulsion',8,1289,'All undead up to level 8 in a group flee for 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Grand Staff of Turning',8,1520,'Targeted Undead up to level 12 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Minor Staff of Turning',8,556,'Targeted Undead up to level 4 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Mending',8,613,'Heals target for 45 points(Undead, Atronachs, and Machines are unaffected)(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Repulsion',8,675,'All undead up to level 4 in a group flee for 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Healing Hand',8,198,'Heals target for 10 points(Undead, Atronachs, and Machines are unaffected)(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Turning',5,1036,'Targeted Undead up to level 8 flee or 1 turn(40 charges)',5);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Eye of Melka',8,1234,'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives the target Burn for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Forsworn Staff',8,183,'Target takes 8 points of fire damage, gives the target Burn for 2 turns(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Staff of Magnus',8,2011,'Abosrb 50 points of magicka from the target, if the target has no magicka left the target takes 50 points of damage(40 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Aetherial Staff',8,1970,'Summons a Dwarven Spider or Dwarven Sphere to fight for you for 2 turns',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Sanguine Rose',10,2087,'Summons a Dremora of the same level as you to fight alongside your party for 2 turns(50 charges)',2);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Wabbajak',10,1211,'Deals 27 Damage to Target; A blast from this staff has unpredictable effects(50 charges)',3);
INSERT INTO Staffs (StaffName,StaffWeight,StaffValue,StaffDesc,SpellTypeID) VALUES ('Skull of Corruption',10,1680,'Deals 20(up to 50) points of damage, amount of damage goes up by 10 for every dream collected from sleeping people(max 3 people)(50 charges)',3);

-- Data for Armor_Types Table
INSERT INTO Armor_Types (ArmorTypeName) VALUES ('Light');
INSERT INTO Armor_Types (ArmorTypeName) VALUES ('Heavy');

-- Data for Armors Table
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Hide',5,5,50,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Worn Shrouded',5,6,80,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Fur',6,6,50,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Guard(Various)',6,6,75,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Studded',7,6,75,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Imperial Light',7,5,65,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Studded Imperial',7,6,125,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Vampire',8,5,175,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Elven Light',9,4,125,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Leather',9,6,125,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Skaal',9,5,100,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Stormcloak Officer',10,8,35,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Forsworn',11,6,100,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Dawnguard',11,6,220,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Elven',11,6,225,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Shrouded',11,7,373,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Chitin',12,4,240,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Vampire Royal',12,9,250,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Scaled',13,6,350,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Blackguards',13,7,2079,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Thieves Guild',13,7,665,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Elven Guilded',15,4,550,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Guild Masters',16,10,1779,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Glass',16,7,900,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Ancient Falmer',16,7,900,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Stalhrim Light',17,7,925,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Ancient Shrouded',18,5,617,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Dragonscale',20,10,1500,1);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Imperial',8,35,100,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Iron',8,30,125,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Banded Iron',8,35,200,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Falmer',11,20,275,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Steel',12,25,275,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Wolf',12,20,55,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Bonemold',13,34,290,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Dwarven',14,45,400,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Dawnguard Heavy',14,42,425,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Falmer Hardened',16,40,250,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Improved Bonemold',18,43,290,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Chitin Heavy',20,35,650,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Orcish',22,35,1000,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Steel Plate',22,38,625,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Ebony',26,38,1500,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Falmer Heavy',26,35,1200,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Nordic Carved',26,37,1600,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Blades',26,45,400,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Dragonplate',28,40,2125,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Stalhrim Heavy',28,38,2200,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Ancient Nord',30,28,235,2);
INSERT INTO Armors (ArmorName,ArmorDefense,ArmorWeight,ArmorValue,ArmorTypeID) VALUES ('Daedric',32,50,3200,2);

-- Data for Unique_Armors Table
INSERT INTO Unique_Armors (UArmorName,UArmorDefense,UArmorWeight,UArmorValue,UArmorDesc,ArmorTypeID) VALUES ('Saviors Hide',9,6,5012,'This gear gives an additional 5 points of magic resist and 10 points of poison resist',1);
INSERT INTO Unique_Armors (UArmorName,UArmorDefense,UArmorWeight,UArmorValue,UArmorDesc,ArmorTypeID) VALUES ('Nightingale',14,12,1553,'This gear gives 30 additional points of stamina and 10 points of frost resist',1);
INSERT INTO Unique_Armors (UArmorName,UArmorDefense,UArmorWeight,UArmorValue,UArmorDesc,ArmorTypeID) VALUES ('Deathbrand',17,7,2433,'This gear gives 50 additional points of stamina',1);
INSERT INTO Unique_Armors (UArmorName,UArmorDefense,UArmorWeight,UArmorValue,UArmorDesc,ArmorTypeID) VALUES ('Ebony Mail',27,28,5000,'1 additional sneak dice, 5 points of poison damage to any opponent nearby a turn',2);

-- Data for Shields Table
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Hide Shield',5, 4 ,25 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Imperial Light Shield',6, 4, 40 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Elven Shield',7, 4, 115 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Chitin Shield',9, 8, 215 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Glass Shield',10, 6, 450 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Dragonscale Shield',12, 6, 750 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Stalhrim Shield',13, 10, 600 ,1);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Dented Iron Shield',6, 12, 30 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Guard Shield',6, 6, 40 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Imperial Shield',7, 12, 50 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Iron Shield',8, 12, 60 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Bonemold Shield',10, 8, 95 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Banded Iron Shield',10, 12, 100 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Steel Shield',12, 12, 150 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Chitin Heavy',12, 12, 200 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Dwarven Shield',13, 12, 225 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Blades Shield',14, 12, 225 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Dawnguard Shield',14, 10, 240 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Imporved Bonemold Shield',15, 11, 95 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Nordic Shield',15, 10, 335 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Falmer Shield',15, 15, 10 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Orcish Shield',16, 14, 500 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Ebony Shield',17, 14, 750 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Dragonplate Shield',18, 10, 1050 ,2);
INSERT INTO Shields (ShieldName, ShieldDefense, ShieldWeight, ShieldValue , ArmorTypeID) VALUES ('Daedric Shield',20, 15, 1600 ,2);

-- Data for Unique_Shields Table 
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Aetherial Shield',14, 12, 2000 ,'Bashing a target makes them become ethereal for 1 turn, giving them the ability to not attack of be attacked', 2);
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Auriels Shield',17, 14, 755,'Stores energy of up to 5 blocked attacks, then dealing 5/7/9/11/13 additional bashing damage', 2);
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Dawnguard Rune Shield',14, 6, 450,'10 additional bashing damage to vampires, blocking creates a sun shield damaging anyone striking it for 10 points of damage while also doing 5 points of stamina damage to the wielder', 1);
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Shield of Ysgramor',16, 12, 1715,'Increases magic resist by 20%, wielder gains 20 additional points of health', 2);
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Spellbreaker',19, 12, 227,'Blocking creates a powerful ward that will negate up to 50 points of damage from any spells', 2);
INSERT INTO Unique_Shields (UShieldName , UShieldDefense , UShieldWeight , UShieldValue , UShieldDesc , ArmorTypeID) VALUES ('Targe of the Blooded',5,10,946,'Deals an additional 5 points of bashing damage, while also doing 3 points of bleed damage for 3 turns', 1);

-- Data for Perk_Types Table
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Alteration');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Conjuration');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Destruction');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Illusion');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Restoration');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Enchanting');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Smithing');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Heavy Armor');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Block');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Two-Handed');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('One-Handed');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Archery');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Light Armor');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Sneak');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Lockpicking');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Pickpocket');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Speech');
INSERT INTO Perk_Types (PerkTypeName) VALUES ('Alchemy');

-- Data for Clothes Table
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Belted Tunic',1,2);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Blue/Black Robes',1,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Blacksmith Apron',1,8);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Clothes',1,2);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Dunmer Outfit',2,25);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Fine Clothes',1,40);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Fur Trimmed Cloak',1,100);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Hammerfell Garb',1,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Hooded Monk Robes',1,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Mage Robes',2,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Miners Clothes',1,2);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Monk Robes',1,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Mourners Clothes',1,2);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Nobles Clothes',3,100);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Ragged Clothes',1,1);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Redguard Clothes',1,5);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Roughspun Tunic',1,1);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Tavern Clothes',1,2);
INSERT INTO Clothes (ClothesName,ClothesWeight,ClothesValue) VALUES ('Vampire Clothes',1,2);

-- Data for Unique_Clothes Table
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Blue/Black Mage Robes',1,10,'Regenerate an additional 5 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Novice Robes',1,250,'Regenerate an additional 5 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Apprentice Robes',1,400,'Regenerate an additional 7 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Cultist Robes',1,100,'Regenerate an additional 7 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Hooded Black Mage Robes',1,40,'Regenerate an additional 7 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Necromancer Robes',1,40,'Regenerate an additional 7 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Adept Robes',1,600,'Regenerate an additional 10 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Expert Robes',1,800,'Regenerate an additional 12 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Master Robes',1,1500,'Regenerate an additional 15 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Apprentice Robes',1,400,'Regenerate an additional 7 points of magicka back every turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Robes of Alteration',1,100,'Alteration spells cost 12% less magicka, regen 5 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Robes of Conjuration',1,100,'Conjuration spells cost 12% less magicka, regen 5 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Robes of Destruction',1,100,'Destruction spells cost 12% less magicka, regen 5 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Robes of Illusion',1,100,'Illusion spells cost 12% less magicka, regen 5 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Robes of Resturation',1,100,'Resturation spells cost 12% less magicka, regen 5 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Archmage Robes',1,3265,'All spells cost 15% less magicka, +50 magicka, regen 10 additional points of magicka per turn');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Jester Clothes',1,450,'One handed attacks deal 10 more points of damage, x2 additional sneak attack, +3 sneak dice');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Shrouded Robes',1,250,'Destruction Spells cost 15% less magicka');
INSERT INTO Unique_Clothes (UClothesName,UClothesWeight,UClothesValue,UClothesDesc) VALUES ('Thalmor Robes',1,100,'Destruction Spells cost 12% less magicka');

-- Data for Perks Table
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Alteration','Cast Novice level Alteration spells for half magicka','None',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Alteration Dual Casting','Dual casting an Alteration spell overcharges the effects into an even more powerful version(+1 turn duration)','Alteration 20, Novice Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Alteration','Cast Apprentice level Alteration spells for half magicka','Alteration 25, Novice Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Mage Armor(3)','Protection spells like Stoneflesh are +10/+20/+30 more defense if not wearing armor','Alteration 30/50/70, Apprentice Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Magic Resistance(3)','Blocks 10%/20%/30% of all spells attacking you, does not affect friendly spells from affecting the caster','Alteration 30/50/70, Apprentice Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Alteration','Cast Adept level Alteration spells for half magicka','Alteration 50, Apprentice Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Stability','Alteration spells have greater duration(+1 turn duration)','Alteration 70, Adept Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Alteration','Cast Expert level Alteration spells for half magicka','Alteration 75, Adept Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Atronach','Gain 5 mana back from all magic attacks at you as well as resist 10 points of magic damage(+10 magic resist)','Alteration 100, Expert Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Alteration','Cast Master level Alteration spells for half magicka','Alteration 100, Expert Alteration',1);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Conjuration','Cast Novice level Conjuration spells for half magicka','None',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Conjuration Dual Casting','Dual casting a Conjuration spell overcharges the effects into a longer lasting version(+1 turn duration)','Conjuration 20, Novice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Mystic Binding','Bound weapons do more damage(+10 more damage)','Conjuration 20, Novice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Conjuration','Cast Apprentice level Conjuration spells for half magicka','Conjuration 25, Novice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Soul Stealer','Bound weapons cast Soul Trap on targets','Conjuration 30, Mystic Binding',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Necromancy','Greater duration for reanimated undead(+1 turn duration)','Conjuration 40, Novice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Atromancy','Double duration for conjured Atronachs and Dremora Lords(+2 turn duration)','Conjuration 40, Apprentice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Oblivion Binding','Bound weapons will banish summoned creatures and turn raised ones','Conjuration 50, Soul Stealer',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Conjuration','Cast Adept level Conjuration spells for half magicka','Conjuration 50, Apprentice Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Dark Souls','Reanimated undead have 100 points more health','Conjuration 70, Necromancy',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Conjuration','Cast Expert level Conjuration spells for half magicka','Conjuration 75, Adept Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Elemental Potency','Conjured Atronachs are 50% more powerful','Conjuration 80, Atromancy',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Twin Souls','The player can have two conjured creatures','Conjuration 100, Elemental Potency OR Dark Souls',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Conjuration','Cast Master level Conjuration spells for half magicka','Conjuration 100, Expert Conjuration',2);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Destruction','Cast Novice level Destruction spells for half magicka','None',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Destruction Dual Casting','Dual casting a Destruction spell overcharges the effects into an even more powerful version(+10 damage)','Destruction 20, Novice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Destruction','Cast Apprentice level Destruction spells for half magicka','Destruction 25, Novice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Augmented Flames','Fire spells do 25% more damage (Affects all fire weapon enchantments, not just self-enchanted ones.)','Destruction 30, Novice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Augmented Frost','Frost spells do 25% more damage (Affects all frost weapon enchantments, not just self-enchanted ones.)','Destruction 30, Novice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Augmented Shock','Shock spells do 25% more damage (Affects all shock weapon enchantments, not just self-enchanted ones.)','Destruction 30, Novice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Destruction','Cast Adept level Destruction spells for half magicka','Destruction 50, Apprentice Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Intense Flames','Fire damage causes targets to flee if their health is low','Destruction 50, Augmented Flames',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deep Freeze','Frost damage paralyzes targets if their health is low','Destruction 60, Augmented Frost',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Disintigrate','Shock damage disintegrates targets if their health is low','Destruction 70, Augmented Shock',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Disintigrate','Shock damage disintegrates targets if their health is low','Destruction 70, Augmented Shock',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Destruction','Cast Expert level Destruction spells for half magicka','Destruction 75, Adept Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Destruction','Cast Master level Destruction spells for half magicka','Destruction 100, Expert Destruction',3);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Illusion','Cast Novice level Illusion spells for half magicka','None',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Illusion Dual Casting','Dual casting a Illusion spell overcharges the effects into an even more powerful version(+5 levels)','Illusion 20, Novice Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Animage','Illusion spells now work on higher level animals (+8 levels)','Illusion 20, Novice Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Illusion','Cast Apprentice level Illusion spells for half magicka','Illusion 25, Novice Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Hypnotic Gaze','Calm spells now work on higher level opponents (+8 levels)','Illusion 30, Novice Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Kindred Mage','All Illusion spells work on higher level people (+10 levels)','Illusion 40, Animage',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Illusion','Cast Adept level Illusion spells for half magicka','Illusion 50, Apprentice Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Aspect of Terror','Fear spells now work on higher level opponents (+10 levels)','Illusion 50, Hypnotic Gaze',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Quiet Casting','All spells cast are silent to others','Illusion 50, Kindred Mage',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Rage','Frenzy spells now work on higher level opponents (+12 levels)','Illusion 70, Aspect of Terror',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Illusion','Cast Expert level Illusion spells for half magicka','Illusion 75, Adept Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master of the Mind','Illusion spells work on undead, daedra and automatons','Illusion 90, Rage, Quiet Casting',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Illusion','Cast Master level Illusion spells for half magicka','Illusion 100, Expert Illusion',4);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Restoration','Cast Novice level Restoration spells for half magicka','None',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Restoration Dual Casting','Dual casting a Restoration spell overcharges the effects into an even more powerful version(+10 healing)','Restoration 20, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Regeneration','Healing spells cure 50% more','Restoration 20, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Restoration','Cast Apprentice level Restoration spells for half magicka','Restoration 25, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Recovery (2)','Magicka regenerates 3/5 additional points per turn','Restoration 30/60, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Respite','Healing spells also restore stamina(same amount of points too)','Restoration 40, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Restoration','Cast Adept level Restoration spells for half magicka','Restoration 50, Apprentice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Ward Absorb','Wards casted negate 5 more spell damage as well as gain 10 mana back when a spell hits you with ward up','Restoration 60, Novice Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Restoration','Cast Expert level Restoration spells for half magicka','Restoration 75, Adept Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Avoid Death','Once a day, heals 250 points automatically if the caster falls below 10% health','Restoration 90, Recovery',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Restoration','Cast Master level Restoration spells for half magicka','Restoration 100, Expert Restoration',5);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Enchanter(5)','New enchantments are 20/40/60/80/100% stronger (+20% per rank)','Enchanting 0/20/40/60/80',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Soul Squeezer','Soul gems provide extra magicka for recharging(+3 recharge ability for every soul gem)','Enchanting 20, Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Fire Enchanter','Fire enchantments on weapons and armor are 25% stronger','Enchanting 30, Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Soul Siphon','Death Blows on creatures recharge 5 charges for your equipped enchanted weapon','Enchanting 40, Soul Squeezer',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Frost Enchanter','Frost enchantments on weapons and armor are 25% stronger','Enchanting 40, Fire Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Storm Enchanter','Shock enchantments on weapons and armor are 25% stronger','Enchanting 50, Frost Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Corpus Enchanter','Health, magicka and stamina enchantments on armor are 25% stronger','Enchanting 70, Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Extra Enchanter','Can put two enchantments on the same item','Enchanting 100, Storm Enchanter or Corpus Enchanter',6);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Steel Smithing','Can create Steel armor and weapons at forges, and improve them','None',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Elven Smithing','Can create Elven armor and weapons at forges, and improve them','Smithing 30, Steel Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Dwarven Smithing','Can create Dwarven armor and weapons at forges, and improve them','Smithing 30, Steel Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Advanced Armors','Can create Scaled and Steel Plate armor at forges, and improve them','Smithing 50, Elven Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Orcish Smithing','Can create Orcish armor and weapons at forges, and improve them','Smithing 50, Dwarven Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Arcance Smithing','Enchanted weapons and armor can now be improved','Smithing 60, Steel Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Glass Smithing','Can create Glass armor and weapons at forges, and improve them','Smithing 70, Advanced Armors',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Ebony Smithing','Can create Ebony armor and weapons at forges, and improve them','Smithing 70, Orcish Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Daedric Smithing','Can create Daedric armor and weapons at forges, and improve them','Smithing 90, Ebony Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Dragon Smithing','Can create Dragon armor and weapons at forges, and improve them','Smithing 100, Daedric Smithing or Glass Smithing',7);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Juggernaut(1-5)','Increase armor rating for Heavy Armor by 20%/40%/60%/80%/100%','Heavy Armor 0/20/40/60/80',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Fists of Steel','Unarmed attacks with Heavy Armor gauntlets do their base armor rating in extra damage','Heavy Armor 30, Juggernaut',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Cushioned','Half damage from physics(fall damage, flying objects) with Heavy Armor','Heavy Armor 50, Fists of Steel',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Tower of Strength','You take 1 less turn from any immobilize with Heavy Armor','Heavy Armor 50, Juggernaut',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Conditioning','Wearing Heavy armor no longer affects how much stamina is used when sprinting. Any heavy armor worn no longer counts towards the carry weight','Heavy Armor 70, Cushioned',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Reflect Blows','10% chance to reflect melee damage back to the enemy while wearing Heavy Armor','Heavy Armor 100, Conditioning',8);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Sheild Wall(1-5)','Blocking is 20%/25%/30%/35%/40% more effective','Block 0/20/40/60/80',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deflect Arrows','Arrows that hit the shield do no damage','Block 30, Shield Wall',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Power Bash','Able to do a power bash, dealing 10 damage and staggering a target for 1 turn(does not stack), costs 20 stamina','Block 30, Shield Wall',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Elemental Protection','Blocking with a shield reduces incoming fire, frost and shock damage by 50%','Block 50, Deflect Arrows',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deadly Bash','Bashing deals 30 damage instead of 10, still staggers for 1 turn','Block 50, Power Bash',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Disarming Bash','Chance to disarm when power bashing (50% chance)','Block 70, Deadly Bash',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Shield Charge','Sprinting with a shield raised knocks down most targets forcing them to take a turn to get up','Block 100, Disarming Bash',9);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Barbarian (1-5)','Two-Handed weapons do 20%/40%/60%/80%/100% more base damage','Two-Handed 0/20/40/60/80',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Champions Stance','Power attacks with two-handed weapons cost 25% less stamina','Two-Handed 20, Barbarian',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Limbsplitter (1-3)','Attacks with battle axes give Bleed(2/4/6 damage) for 3 turns','Two-Handed 30/60/90, Barbarian',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deep Wounds (1-3)','Attacks with greatswords have a 10%/15%/20% chance of doing critical damage','Two-Handed 30/60/90, Barbarian',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Skull Crusher (1-3)','Attacks with warhammers ignore 25%/50%/75% of armor','Two-Handed 30/60/90, Barbarian',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Devastating Blow','Standing power attacks do 25% bonus damage with a chance to decapitate your enemies','Two-Handed 50, Champions Stance',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Great Critical Charge','Can do a two-handed power attack while sprinting that does double critical damage','Two-Handed 50, Champions Stance',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Sweep','Sideways power attacks with two-handed weapons hit all targets in front of you','Two-Handed 70, Devastating Blow OR Great Critical Charge',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Warmaster','Backwards power attack has a 25% chance to paralyze the target for 1 turn','Two-Handed 100, Sweep',10);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Armsman (1-5)','One-handed weapons do 20%/40%/60%/80%/100% more base damage','One-Handed 0/20/40/60/80',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Fighting Stance','Power attacks with one-handed weapons cost 25% less stamina','One-Handed 20, Armsman',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Hack and Slash(1-3)','Attacks with war axes give Bleed(2/4/6 damage) for 3 turns','One-Handed 30/60/90, Armsman',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Bladesman(1-3)','Attacks with swords have a 10%/15%/20% chance of doing critical damage','One-Handed 30/60/90, Armsman',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Bone Breaker(1-3)','Attacks with maces ignore 25%/50%/75% of armor','One-Handed 30/60/90, Armsman',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Savage Strike','Standing power attacks do 25% bonus damage with a chance to decapitate your enemies','One-Handed 50, Fighting Stance',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Critical Charge','Can do a one-handed power attack while sprinting that does double critical damage','One-Handed 50, Fighting Stance',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Dual Savagery','Dual wielding power attacks do 50% bonus damage','One-Handed 70, Armsman',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Paralyzing Strike','Backwards power attack has a 25% chance to paralyze the target for 1 turn','One-Handed 100, Savage Strike OR Critical Charge',11);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Overdraw (1-5)','Bows do 20%/40%/60%/80%/100% more base damage','Archery 0/20/40/60/80',12);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Eagle Eye','Adds 2 dice to an accuracy check with bows, cost 10 stamina','Archery 30, Overdraw',12);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Critical Shot ','Reqires 1 less success to get a critical hit as long as you are attacking with a bow/crossbow','Archery 40, Overdraw',12);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Power Shot','Arrows stagger all but the largest opponents 30% of the time','Archery 50, Eagle Eye',12);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Bullseye','15% chance of paralyzing the target for a 1 turn','Archery 100, Power Shot',12);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Agile Defender(1-5)','Increase armor rating for Light Armor by 20%/40%/60%/80%/100%','Light Armor 0/20/40/60/80',13);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Unhindered','Light Armor weighs nothing and does not slow you down when worn','Light Armor 50',13);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Wind Walker','Regen an additional 5 points of stamina a turn in Light Armor','Light Armor 60; Unhindered',13);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deft Movement','10% chance of avoiding all damage when wearing Light Armor','Light Armor 100, Wind Walker',13);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Stealth(1-5)','Adds 1/2/3/4/5 dice for sneak checks permanently','Sneak 0/20/40/60/80',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Backstab','Sneak attacks with one-handed weapons now do six times normal damage','Sneak 30, Stealth',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Light Foot','You will not trigger pressure plates','Sneak 40, Stealth',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Deadly Aim','Sneak attacks with bows now do three times normal damage','Sneak 40, Backstab',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Silent Roll','Sprinting while sneaking executes a silent forward roll(cost same stamina)','Sneak 50, Light Foot',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Assassins Blade','Sneak attacks with daggers now do a total of fifteen times normal damage','Sneak 50, Deadly Aim',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Silence','Walking and running does not affect detection','Sneak 70, Silent Roll',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Shadow Warrior',"Crouching mid-combat will remove you from everyone's sights",'Sneak 100, Silence',14);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Novice Locks','Adds 3 dice with lockpicking checks for novice locks permanently','None',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Apprentice Locks','Adds 3 dice with lockpicking checks for apprentice locks permanently','Lockpicking 25, Novice Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Quick Hands','Lockpick without getting noticed','Lockpicking 40, Apprentice Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Adept Locks','Adds 3 dice with lockpicking checks for adept locks permanently','Lockpicking 50, Apprentice Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Golden Touch','Find 20 more gold in chests','Lockpicking 60, Adept Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Treasure Hunter','10% chance to get special treasure in chests','Lockpicking 70, Golden Touch',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Expert Locks','Adds 3 dice with lockpicking checks for expert locks permanently','Lockpicking 75, Adept Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Unbreakable','Lockpicks never break','Lockpicking 100, Treasure Hunter',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Locks','Adds 3 dice with lockpicking checks for master locks permanently','Lockpicking 100, Expert Locks',15);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Light Fingers (1-5)','Adds 1/2/3/4/5 dice for pickpocket checks permanently','Pickpocket 0/20/40/60/80',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Night Thief','Adds 2 dice for a pickpocket check if the target is asleep','Pickpocket 30, Light Fingers',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Poisoned','Silently harm enemies by placing poisons in their pockets','Pickpocket 40, Night Thief',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Extra Pockets','Carry cap increased by 100 points','Pickpocket 50, Night Thief',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Keymaster','Pickpocketing keys always works','Pickpocket 60, Extra Pockets',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Misdirection','Can steal the weapons off a target','Pickpocket 70, Keymaster',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Perfect Touch','Can steal the equipped gear off a target','Pickpocket 100, Misdirection',16);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Haggling(1-5)','Buying and selling prices are 10%/15%/20%/25%/30% better','Speech 0/20/40/60/80',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Allure','10% better prices from npcs of the opposite sex','Speech 30, Haggling',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Bribery','Can possibly bribe guards to ignore crimes with bribe checks','Speech 30, Haggling',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Persuasion','Adds 3 dice to a persuasion checks permanently','Speech 50, Bribery',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Intimidation','Adds 5 dice to a intimidation checks permanently','Speech 70, Persuasion',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Fence','Can barter stolen goods with any merchant','Speech 100, Haggling',17);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Alchemist (1-5)','New potions/poisons are 20/40/60/80/100% stronger','Alchemy 0/20/40/60/80',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Physician','Potions you mix that restore health/magicka/stamina are 25% more powerful','Alchemy 20, Alchemist',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Poisoner','Poisons you mix are 25% more effective','Alchemy 30, Physician',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Benefactor','Potions you mix with beneficial effects have an additional 25% greater magnitude','Alchemy 30, Physician',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Experimenter (1-3)','Eating an ingredient reveals the first 2/3/4 effects','Alchemy 50/70/90, Benefactor',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Concentrated Poison','Poisons applied to weapons last for 2 hits instead of 1','Alchemy 60, Poisoner',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Snakeblood','Complete immunity to all poisons/poison','Alchemy 80, Concentrated Poison, Experimenter',18);
INSERT INTO Perks (PerkName,PerkDesc,PerkRequired,PerkTypeID) VALUES ('Master Alchemist','Gives the ability to have two different effects on created potions/poisons','Alchemy 100, Snakeblood',18);

-- Data for Spell_Difficulties Table
INSERT INTO Spell_Difficulties (SpellDiffName) VALUES ('Novice');
INSERT INTO Spell_Difficulties (SpellDiffName) VALUES ('Apprentice');
INSERT INTO Spell_Difficulties (SpellDiffName) VALUES ('Adept');
INSERT INTO Spell_Difficulties (SpellDiffName) VALUES ('Expert');
INSERT INTO Spell_Difficulties (SpellDiffName) VALUES ('Master');

-- Data for Spells Table
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Candlelight','Creates a hovering light near the caster for a certain amount of time',20,1,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Equilibrium','Converts health(costs health instead of magicka) to magicka and gain 25 points of mana back',25,1,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Oakflesh','Increases casters armor by 10 points for 2 turns',50,1,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Magelight','Creates a ball of light in a casted area for a certain amount of time',84,1,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Stoneflesh','Increases casters armor by 15 points for 2 turns',90,1,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ash Spell','A target that fails to resist is immobilized in hardened ash for 1 turn',148,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Detect Life','Nearby living creatures, (but not undead, machines, or daedra) can be seen through walls',100,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ironflesh','Increases casters armor by 20 points for 2 turns',140,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Telekenisis','Can pull an object to you from distance. Add it to your inventory or throw it.',170,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Transmute','Transform any iron ore in the casters inventory to silver ore, and silver ore to gold ore',100,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Waterbreathing','Can breath underwater for a certain amount of time',222,1,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ash Rune','Cast an Ash Rune on a nearby surface, dealing 20 points of damage to targets that step nearby it, also immobilizes them for 1 turn',248,1,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Detect Dead','Nearby undead creatures, (but not living, machines, or daedra) can be seen through walls',148,1,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ebonyflesh','Increases casters armor by 30 points for 2 turns',340,1,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Paralyze','A target that fails to resist is paralyzed for 2 turns',450,1,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Dragonhide','Caster takes no damage from any physical attack for 2 turns',820,1,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Mass Paralysis','Any nearby targets that fail to resist are paralyzed for 2 turns',936,1,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Bound Dagger','Summons a Bound Dagger to wield for 2 turns',32,2,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Bound Sword','Summons a Bound Sword to wield for 2 turns',92,2,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Familiar','Summons a Familiar to fight for you for 2 turns',106,2,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Raise Zombie','Reanimate weak zombies(up to level 10) to fight for you for 2 turns',102,2,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Summon Unbound Dremora','Summon an Unbound Dremora(not an ally unless further action made)',100,2,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Bound Battleaxe','Summons a Bound Battleaxe to wield for 2 turns',168,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Boneman','Summons a Boneman  to fight for you for 2 turns',128,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Flame Atronach','Summons a Flame Atronach to fight for you for 2 turns',150,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Flaming Familiar','Summons a Flaming Familiar to charge into battle and explode at a group dealing 30 points of damage',56,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Reanimate Corpse','Reanimate zombies(up to level 30) to fight for you for 2 turns',144,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Soul Trap','If the target you had put soul trap on died in the next 2 rounds of battle, fill a soul gem',106,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Summon Arvak','Summon the horse Arvak to act as your stead(or fight for you for 2 turns in battle)',136,2,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Banish Daedra','Weaker summoned daedra(up to level 30) are sent back to Oblivion',196,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Bound Bow','Summons a Bound Bow to wield for 4 turns',206,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Ash Spawn','Summons an Ash Spawn to fight for you for 2 turns',186,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Frost Atronach','Summons a Frost Atronach to fight for you for 2 turns',214,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Mistman','Summons a Mistman to fight for you for 2 turns',192,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Seeker','Summons a Seeker to fight for you for 2 turns',156,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Revenant','Reanimate powerful zombies(up to level 50) to fight for you for 2 turns',182,2,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Command Daedra','Powerful summoned or raised creatures(up to level 50) are under players control',242,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Dremora Lord','Summons a Dremora Lord to fight for you for 2 turns',358,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Wrathman','Summons a Wrathman to fight for you for 2 turns',300,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Conjure Storm Atronach','Summons a Storm Atronach to fight for you for 2 turns',322,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Dread Zombie','Reanimate very powerful zombies(up to level 70) to fight for you for 2 turns',302,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Expel Daedra','Powerful summoned daedra(up to level 50) are sent back to Oblivion',214,2,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Dead Thrall','Reanimate any dead body to fight for you permanently',1000,2,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Flame Thrall','Summons a Flame Atronach to fight for you permanently',900,2,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frost Thrall','Summons a Frost Atronach to fight for you permanently',1100,2,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Storm Thrall','Summons a Storm Atronach to fight for you permanently',1200,2,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Flames','Spits a gout of fire dealing 15 points of damage to the target, gives the target Burn(see Debuffs under Abilities/Diseases) for 2 turns',14,3,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frostbite','Spits a gout of frost dealing 15 points of damage to the targets health and stamina',16,3,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Sparks','Spits a gout of shock dealing 15 points of damage to the targets health and magicka',18,3,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Vampiric Drain','Absorb 5,7,10,13(depending on vamparism stage) points of health from the target(Can only have as a vampire)',6,3,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Firebolt','Shoots a bolt of fire dealing 25 points of damage to the target, gives the target Burn for 2 turns',40,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Freeze','Shoots a spike of ice dealing 20 points of damage to health and stamina, gives the target Slow for 2 turns',30,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ice Spike','Shoots a spike of ice dealing 25 points of damage to health and stamina',48,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ignite','Shoots a blast of flame that gives Burn to the target for 4 turns(this Burns does 4 damge per turn instead of 2)',30,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Lightning Bolt','Shoots a bolt of lightning dealing 25 points of damage to health and magicka',50,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fire Rune','Cast a Fire Rune on a nearby surface, dealing 50 points of damage to targets that step nearby it, gives Burn for 2 turns',234,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frost Rune','Cast a Frost Rune on a nearby surface, dealing 50 points of damage to targets health and stamina that step nearby it, gives Slow for 2 turns',292,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Lightning Rune','Cast a Lightning Rune on a nearby surface, dealing 50 points of damage to targets health and magicka that step nearby it',320,3,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Chain Lightning','Shoots a lightning bolt dealing 40 points of damage to targets health and magicka, does matching damage to one nearby target(can hit ally)',156,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fireball','Shoots a fireball dealing 40 points of damge to a target and any nearby targets, gives Burn to any target hit for 2 turns(can hit allies)',132,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Ice Storm','Casts a Freezing Whirlwind that deals 40 points of damage to targets health and stamina, does matching damage to anyone nearby',144,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Flame Cloak','Casts a cloak of flames that deal 8 points of damage to opponents in melee range,grants any target Burn for 2 turns,does not harm allies but can harm npcs,lasts 2 turns',288,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frost Cloak','Casts a cloak of frost that deal 8 points of damage to opponents health and stamina,does not harm allies but can harm npcs,lasts 2 turns',316,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Storm Cloak','Casts a cloak of sparks that deal 8 points of damage to opponents health and magicka,does not harm allies but can harm npcs,lasts 2 turns',370,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Whirlwind Cloak','Cast a cloak of wind that has the chance to fling opponenets in melee range away,does not harm allies but can harm npcs, last for 2 turns',338,3,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Icy Spear','Shoots a spear of ice dealing 60 points of damage to targets health and stamina',320,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Incinerate','Shoots a blast of fire dealing 60 points of damage to target, gives Burn to the target for 2 turns',298,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Thunderbolt','Shoots a Thunderbolt dealing 60 points of damage to targets health and magicka',342,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Wall of Flames','Casts a wall of fire dealing 50 points of damage to any opponent inside and giving them Burn for 2 turns,does not harms allies,last for 2 turns',330,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Wall of Frost','Cast a wall of frost dealing 50 points of damage to health and stamina to any opponent inside,does not harm allies,last for 2 turns',340,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Wall of Storms','Cast a wall of storm dealing 50 points of damage to health and magicka to any opponent inside,does not harm allies,last for 2 turns',350,3,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Blizzard','Creates a blizzard around the caster,dealing 50 points of damge to health and stamina to any opponents nearby,does not harm allies,lasts for 4 turns',656,3,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fire Storm','Creates a firey explosion around the user dealing from 100-200(based of proximity)points of damage to any opponents nearby,gives Burn for 2 turns,does not harm allies',846,3,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Lightning Storm','Fires a storm of lightning dealing 75 points of damage to targets health and magicka,does not harm allies, last for 4 turns ',750,3,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Clairvoyance','Shows the direction to the current goal in the current room user is in',25,4,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Courage','Target wont flee from battle for 2 turns and gets 5 additional Health and Stamina',38,4,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fury','Creatures and People up to level 6 will attack anyone nearby for 2 turns',66,4,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Calm','Creatures and People up to level 9 are immobilized for 1 turn',146,4,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fear','Creatures and People up to level 9 will flee from battle for 1 turn',152,4,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Muffle','Add 2 dice during your sneak check',144,4,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frenzy','Creatures and People up to level 14 will attack anyone nearby for 2 turns',208,4,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Frenzy Rune','Cast a Frenzy Rune on a nearby surface, targets under level 20 will attack anyone nearby for 2 turns',278,4,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Rally','Target wont flee from battle for 2 turns and gets 20 additional Health and Stamina',112,4,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Invisibility','Makes you completely invisible for a certain amount of time',334,4,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Pacify','Creatures and People up to level 20 are immobilized for 2 turns',290,4,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Rout','Creatures and People up to level 20 will flee from battle for 1 turn',316,4,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Call to Arms','Party gains 10 base damage and 25 additional Health and Stamina for 3 turns',854,4,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Harmony','Creatures and People up to level 25 are immobilized for 2 turns',1052,4,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Hysteria','Creatures and People up to level 25 will flee from battle for 2 turns',866,4,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Mayhem','Creatures and People up to level 25 will attack anyone nearby for 2 turns',990,4,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Healing','Heals the Caster by 15 points',12,5,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Lesser Ward','Increases armor by 10 points and negate 10 points of spell damage/effects for 1 turn',34,5,1);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Fast Healing','Heals the Caster by 25 points',72,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Healing Hands','Heals the Target by 20 points(cannot heal undead, atronachs, or automations)',24,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Necromantic Healing','Heals Undead target by 20 points(cannot heal living, atronachs, or automations)',36,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Steadfast Ward','Increases armor by 15 points and negate 15 points of spell damage/effects for 1 turn',58,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Sun Fire','Ball of sunlight that does 25 damage to undead(and only undead)',24,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Turn Lesser Undead','Targeted Undead up to level 6 flee for 2 turns',84,5,2);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Close Wounds','Heals the Caster 40 points',126,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Greater Ward','Increases armor by 20 points and negate 20 points of spell damage/effects for 1 turn',86,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Heal Other','Heals the Target by 35 points(cannot heal undead, atronachs, or automations)',80,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Heal Undead','Heals Undead target by 35 points(cannot heal living, atronachs, or automations)',114,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Poison Rune','Targets that fail to resisit will take 5 points of poison damage for 3 turns',146,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Repel Lesser Undead','Undead up to level 8 around the caster will flee for 1 turn',114,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Stendarrs Aura','Undead close to caster takes 10 points of sun damage, last 2 turns',248,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Turn Undead','Targeted Undead up to level 13 flee for 2 turns',168,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Vampires Bane','Fires an explosion that does 40 points of sun damage to target and nearby targets',72,5,3);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Circle of Protection','Undead up to level 20 inside or that enter the circle around the caster flee permenantly, last 3 turns',170,5,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Grand Healing','Heals everyone close to the caster by 55 points(cannot heal undead, atronach, automations)',254,5,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Repel Undead','Undead up to level 16 around the caster will flee for 1 turn',352,5,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Turn Greater Undead','Targeted Undead up to level 21 flee for 2 turns',266,5,4);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Bane of the Undead','Undead up to level 44 around the caster will flee for 1 turn, also gives Burn to all affected undead for 2 turns',988,5,5);
INSERT INTO Spells (SpellName,SpellDesc,SpellMagickaCost,SpellTypeID,SpellDiffID) VALUES ('Guardian Circle','Undead up to level 35 inside or that enter the circle around the caster flee permenantly, heals caster and any ally inside the circle by 20 points, lasts 4 turns',716,5,5);

-- Data for Shouts Table
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Animal Allegiance(Raan-Mir-Tah)','Call fourth an animal from the wild to fight for you for 3 turns(Outdoors only)','1-small animal; 2-medium animal; 3-large animal','1-3 turns; 2-4 turns; 3-5 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Aura Whisper(Laas-Yah-Nir)','A whisper that will reveal any and all life in the area around you(Indoors only)','1-small radius; 2-medium radius; 3-large radius','No Cooldown, can be used only once per area');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Battle Fury(Mid-Vur-Shaan)','Enchants you and all allies with the ability to attack more during a single turn','1-1 additional attack; 2-2 additional attacks; 3-3 additional attacks','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Become Ethereal(Feim-Zii-Gron)','Changes your form to an etheral being that can do no damage or take any damage(able to regen during this time)','1-1 turn; 2-2 turns; 3-3 turns','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Bend Will(Gol-Hah-Dov)','Empowers the mind of any creature to fight along side you for 2 turns','1-animals; 2-people; 3-dragons','1-2 turn; 2-4 turns; 3-6 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Call Dragon(Od-Ah-Viing)','Calls fourth the great dragon Odahviing to fight by your side for an encounter(Outdoors only)','N/A(only works when full shout is called)','No Cooldown, can be used only once per day');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Call of Valor(Hun-Kaal-Zoor)','Calls fourth a Hero of Soverngarde to fight by your side for an encounter','N/A(only works when full shout is called)','No Cooldown, can be used only once per day');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Clear Skies(Lok-Vah-Koor)','Clears the skies of any weather, become your own weatherman(Outdoors only)','N/A(only works when full shout is called)','No Cooldown, can be used only once per day');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Cyclone(Ven-Gaar-Nos)','Control a chaotic cyclone to knock down anyone nearby forcing them immobilized for 1 turn','1-small radius; 2-medium radius; 3-large radius','1-3 turns; 2-4 turns; 3-5 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Disarm(Zun-Haal-Viik)','Completely rip the weapon from an opponents/groups grasp','1-1 opponent; 2-2 opponents; 3-3 opponents','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Dismay(Faas-Ru-Maar)','Make all that oppose you run in terror','1-small; 2-medium; 3-large','1-2 turns; 2-3 turns; 3-4 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Dragon Aspect(Mul-Qah-Diiv)','Embrace the power of the dragons, deal +10 base damage to all attacks as well as have +10 base defense, damage shouts do +10 more damage','N/A(only works when full shout is called)','No Cooldown, can be used only once per day');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Dragonrend(Joor-Zah-Frul)','Forces a dragon to be grounded from the skies, allowing them to be hit a lot easier(Can ground dragons even more if on ground already)','1-1 turn grounded ; 2-2 turns grounded ; 3-3 turns grounded','1-1 turn; 2-2 turns; 3-3 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Drain Vitality(Gaan-Lah-Haas)','Drain the mortal energies from your opponent','1-10 stam damage; 2-10 mag and stam damage; 3-10 health,mag,and stam damage','1-2 turns; 2-4 turns; 3-6 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Fire Breath(Yor-Tool-Shul)','Breath the dragons flames to destroy your opponents, can hit small groups, gives Burn to all those hit for 2 turns','1-20 fire damage; 2-30 fire damage; 3-40 fire damage','1-2 turns; 2-4 turns; 3-7 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Frost Breath(Fo-Krah-Diin)','Breath the dragons frost to make your opponents feel the harsh winter','1-10 damage(health,stam); 2-20 damage(health,stam); 3-30 damage(health,stam)','1-2 turns; 2-4 turns; 3-7 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Ice Form(IIz-Slen-Nus)','Completely empower your opponent in ice, freezing them for 2 turns, can only hit one target','1-small; 2-medium; 3-large(dragons and mammoths immune)','1-3 turns; 2-5 turns; 3-7 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Kynes Peace(Kaan-Drem-Ov)','This voice soothes wild beasts making them lose their desire to fight, can hit small groups','1-small; 2-medium; 3-large','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Marked for Death(Krii-Lun-Aus)','Bring doom to your opponenet and strip away their defensive properties permanently, can only hit one target','1-10 damage(health,def); 2-20 damage(health,def); 3-30 damage(health,def)','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Soul Tear(Rii-Vaaz-Zol)','Rip out the soul of your opponent instantly killing them and fill a empty soul gem if there is one in your inventory, cannot use on allies!(with some excuses)','N/A(only works when full shout is called)','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Slow Time(Tiid-Klo-Ul)','Use the power of time itself, preventing everyone in battle to take any actions for one turn(including allies)','N/A(only works when full shout is called)','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Storm Call(Strun-Bah-Qo)','Shout to the skies and unleash the power of skyrims weather, lightning will randomly strike anyone(including allies),(Outdoors only)','1-2 turns,40 damage; 2-4 turns,60 damage; 3-5 turns, 80 damage','No Cooldown, can be used only once per battle');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Summon Durnehviir(Dur-Neh-Viir)','Calls fourth the undying dragon Durnehviir to fight by your side for an encounter(Outdoors only)','N/A(only works when full shout is called)','No Cooldown, can be used only once per day');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Throw Voice(Zul-Mey-Gut)','Throws a fake voice at a location to distract anyone nearby the voice to go to that location','N/A(only works when full shout is called)','No Cooldown, can be used only once per area');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Unrelenting Force(Fus-Ro-Dah)','Uses the raw power of the voice to push anyone and anything you shout at, can push multiple enemies','1-5 damage; 2-5 damage + 1 turn stun; 3- 5 damage + 2 turn stun','1-1 turn; 2-3 turns; 3-4 turns');
INSERT INTO Shouts (ShoutName,ShoutDesc,ShoutTeirs,ShoutCD) VALUES ('Whirlwind Sprint(Wuld-Nah-Kest)','This shout dashes the shouter forward a certain distance, can possibly allow the user to get places a mortal could not achieve','1-short distance; 2-medium distance; 3-long distance','No Cooldown, can be used only three times per day');

-- Data for Power_Types Table
INSERT INTO Power_Types (PowerTypeName) VALUES ('Race Specific');
INSERT INTO Power_Types (PowerTypeName) VALUES ('Vampire');
INSERT INTO Power_Types (PowerTypeName) VALUES ('Werewolf');
INSERT INTO Power_Types (PowerTypeName) VALUES ('Faction-Related');
INSERT INTO Power_Types (PowerTypeName) VALUES ('Standing Stone');

-- Data for Ability Types Table
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Race Specific');
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Vampire');
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Werewolf');
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Divine Blessings');
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Meditations of Words of Power');
INSERT INTO Ability_Types (AbilityTypeName) VALUES ('Standing Stone');

-- Data for Powers Table
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Highborn(High Elf)','Regenerate 25 points of your mana back every turn for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Hitskin(Argonian)','Regenerate 25 points of your health back every turn for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Command Animal(Wood Elf)','Turn any animal nearby into an ally for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Dragonskin(Breton)','Take half damage and 15 mana back from all hostile spells casted at you for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ("Ancestor's Wraith(Dark Elf)",'Opponents in melee range take 8 points of damage every turn for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Voice of the Emperor(Imperial)','Nearby people are calmed and will no longer fight you',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Battle Cry(Nord)','Nearby people are afraid and will flee from you',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Beserker Rage(Orc)','Take half damage from all physical attacks and deal double damage for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Adrenaline Rush(Redgaurd)','Regenerate 25 points of your stamina back every turn for 2 turns',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Night Eye(Khajiit)','Allows you to see in the dark for a certain area',1);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Embrace the Shadows','Vampire is invisible and has imporved night vision for a certain amount of time',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Vampires Seduction','Creatures and People up to level 10 wont fight for 2 turns',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Vampires Servant','Reanimate a dead body to fight for you for 2 turns, ability to raise more powerful bodies come with the more days you go hungry',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Vampires Sight','Allows you to see in the dark for a certain area',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Vampiric Drain','Absorb 25 points of health back from a target(Can be only used unlimited while being in the Vampire Lord Form)',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Vampire Lord','Transforms into a Vampire Lord for as long as you want',2);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Beast Form','Transforms into a Werewolf for as long as you want to keep it on, able to have unlimited transformations with the Ring of Hircine',3);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Totem of Ice Brothers','Call fourth 2 Ice Wolfs to fight for you for 2 turns, unlocks with perk',3);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Totem of Fear','Casts Fear against nearby enemies(Check Illusion under Spells)',3);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Totem of the Hunt','Casts Detect Life in an area(Check Alteration under Spells), unlocks with perk',3);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Nightingale Strife(Nightingales)','Instantly absorb 100 points of health from a single target',4);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Nighttingale Subterfuge(Nightingales)','People and creatures near the user will attack anything for a certain amount of time',4);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Shadowcloak of Nocturnal(Nightingales)','Automatically become invisible while sneaking for a certain amount of time',4);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Summon Spectral Assassin(Dark Brotherhood)','Summons the ghost of a legendary assassin to fight for you until he(or you) is defeated',4);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Ritual Stone','Raise all nearby dead enemies to fight for you for 2 turns',5);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Serpent Stone','Paralyze a target for 2 turns as well as do 25 points of damage',5);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Shadow Stone','Become invisible for a certain amount of time',5);
INSERT INTO Powers (PowerName,PowerDesc,PowerTypeID) VALUES ('Tower Stone','Unlocks any Expert or lower level lock',5);

-- Data from Abilities Table
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Fortify Magicka(High Elf)','High Elves are born with an additional 50 magicka',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Disease(Argonian)','Argonian blood gives you 50% resistence to disease',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Water Breathing(Argonian)','Agronians can breathe underwater',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Disease/Poison(Wood Elf)','Wood Elf blood gives you 50% resistence to disease and poison',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Magic Resistance(Breton)','Bretons take 10 less damage from all magic(10 magic resist)',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Fire(Dark Elf)','Dark Elf blood gives you 50% resistence to fire',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Imperial Luck(Imperial)','Wherever gold can be found, imperials find 10 more gold',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Claws(Khajiit)','Khajiit Claws do 15 points of damage for unarmed damage',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Frost(Nord)','Nord blood gives you 50% resistence to frost',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Poison(Redguard)','Redgaurd blood is completly immune to all poison damage',1);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ("Nightstalker's Footsteps",'Sneak attempts are easier, giving you 2 additional dice for sneak checks',2);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Disease','Vampire blood makes you completly immune to diseases',2);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Frost','Vampire blood gives you 25% resistence to frost(depends on vampirism stage)',2);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Poison','Vampire blood is completly immune to all poison damage',2);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Weakness to Fire','Vampire blood gives you 25% vulnerability to fire(depends on vampirism stage)',2);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Resist Disease','Werewolf blood makes you completly immune to diseases',3);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Werewolf Claws','Werewolf Claws do 25 points of damage for unarmed damage',3);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Akatosh','Regenerate an additional 5 points of magicka back every turn',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Arkay','Increases your health by 25 points',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Auriel','Do 5 additional damage with any ranged weapons',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Azura','Take 5 less damage from all magic',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Boethiah','Do 5 additional damage with any one-handed weapons',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Dibella','Speechcraft is better, giving you 2 additional dice for speech checks',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Julianos','Increases your magicka by 25 points',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Kynareth','Increases your stamina by 25 points',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Mara','Healing spells will heal 5 more points',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blesssing of Nocturnal','Sneak attempts are easier, giving you 1 additional dice for sneak checks',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blesssing of Stendarr','Block 5 more damage with shields',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Talos','Take 1 turn off for all shout cooldowns',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Blessing of Zenithar','Prices are 10% cheaper',4);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Feim(Become Ethereal)','Regenerate an additional 5 points of health back per turn while being Ethereal',5);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Fus(Unrelenting Force)','You take 1 less turn from any immobilize while all opponents take 1 more turn',5);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('Yol(Fire Breath)','Does additional damage for every fire breath teir(1-5dmg; 2-7dmg; 3-10dmg)',5);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Apprentice Stone','Regenerate an additional 10 points of magicka back per turn , you take double damage from magic attacks',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Atronach Stone','Regen 10 magicka from all magic attacks at you; 50 extra magicka; Regen 5 magicka per less per turn',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Lady Stone','Regenerate an additional 5 points of health and stamina back per turn ',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Lord Stone','Gain 20 points of base defense and 10 points of magic resist',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Lover Stone','Gives 3 skill levels per level instead of 2 for all skills',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Mage Stone','Gives 4 skill levels per level instead of 2 for skills under The Mage',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Steed Stone','Increases max carry cap by 100 points; all equipped armor weighs nothing and does not affect stamina use when running',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Thief Stone','Gives 4 skill levels per level instead of 2 for skills under The Thief',6);
INSERT INTO Abilities (AbilityName,AbilityDesc,AbilityTypeID) VALUES ('The Warrior Stone','Gives 4 skill levels per level instead of 2 for skills under The Warrior',6);

-- Data for Debuff_Types Table
INSERT INTO Debuff_Types (DebuffTypeName) VALUES ('Battle Debuffs');
INSERT INTO Debuff_Types (DebuffTypeName) VALUES ('Diseases');

-- Data for Enchant_Types Table
INSERT INTO Enchant_Types (EnchantTypeName) VALUES ('Weapon Enchants');
INSERT INTO Enchant_Types (EnchantTypeName) VALUES ('Apparel Enchants');

-- Data for Debuffs Table
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Burn','Deals 1 point of damage per turn; all fire attacks deal 3 more damage while Burn is active','All Fire Spells',1);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Slow','Turns target into the slowest target in battle, making them last in the turn order','Freeze, Frost Runes',1);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Bleed','Deal 2/4/6 points of damage per turn','Battleaxes with Limbsplitter, War Axes with H&S',1);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Ataxia','Lose 2 dice with any lockpicking and pickpocketing checks','Skeevers, Traps, Frostbite Spiders, Slaughterfish',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Bone Break Fever','Lose 25 points of stamina','Bears, Traps',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Brain Rot','Lose 25 points of magicka','Hagravens, Traps',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Droops','Do 5 points less damage with melee weapons','Ash Hoppers',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Rattles','Regen 5 stamina per less per turn','Chaurus, Traps',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Rockjoint','Do 10 less damage with melee weapons','Horkers, Wolves, Bears; Foxes, Traps',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Sanguine Vampiris','Lose 25 points of health; unlocks vampire after 4 days/sessions without care','Vampires',2);
INSERT INTO Debuffs (DebuffName,DebuffDesc,DebuffFrom,DebuffTypeID) VALUES ('Witbane','Regen 5 magicka per less per turn','Sabre Cats, Traps',2);

-- Data for Enchants Table
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Absorb Health','Absorb 8 points of health from target',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Absorb Magicka','Absorb 8 points of magicka from target',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Absorb Stamina','Absorb 8 points of stamina from target',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Banish','Summoned Daedra are sent back to Oblivion',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fear','Creatures and people up to level 9 flee from combat for 1 turn',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fiery Soul Trap','If the target attacked dies in the current/next round, fill a soul gem; also does 10 points damage to health',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fire Damage','Target takes 10 points damage to health, gives target Burn for 2 rounds',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Icy Soul Trap','If the target attacked dies in the current/next round, fill a soul gem; also does 5 points damage to health and stamina',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Frost Damage','Target takes 10 points damage to health and stamina',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Magicka Damage','Target takes 10 points damage to magicka',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Shock Damage','Target takes 10 points damage to health and magicka',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Soul Trap','If the target attacked dies in the current/next round, fill a soul gem in your inventory',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Stamina Damage','Target takes 10 points damage to stamina',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Turn Undead','Undead up to level 13 flee for 1 turn',1);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Alchemy','Increases the potency of created potions and poisons(dm decides this increase)',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Alteration','Alteration spells cost 25% less mana',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Alteration+Magicka Regen','Alteration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Archery','Bows do 10 more damage',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Barter','Prices for all items are 10% less',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Block','Block 5 more damage when you block',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Carry Weight','Increases max carry cap by 20 points',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Conjuration','Conjuration spells cost 25% less mana',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Conjuration+Magicka Regen','Conjuration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Destruction','Destruction spells cost 25% less mana',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Destruction+Magicka Regen','Destruction spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Health Regen','Regenerate an additional 5 points of health back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Health','Increases health by 20 points',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Illusion','Illusion spells cost 25% less mana',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Illusion+Magicka Regen','Illusion spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Lockpicking','Adds 1 dice to a lockpicking check',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Magicka','Increases magicka by 20 points',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Magicka Regen','Regenerate an additional 5 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify One-Handed','One-Handed weapons deal 10 more damage',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Pickpocket','Adds 1 dice to a pickpocketing check',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Restoration','Restoration spells cost 25% less mana',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Restoration+Magicka Regen','Restoration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Stamina','Increases stamina by 20 points',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Stamina Regen','Regenerate an additional 5 points of stamina back every turn',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Two-Handed','Two-Handed weapons deal 10 more damage',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Fortify Unarmed','Unarmed strikes deal 10 more damage',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Muffle','Adds 1 dice to a sneak check',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Disease','50% disease resist',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Fire','Wearer only takes 50% of damage from all fire attacks',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Frost','Wearer only takes 50% of damage from all frost attacks',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Magic','Wearer takes 10 less damage from all magic attacks',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Poison','50% poison resist',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Resist Shock','Wearer only takes 50% of damage from all shock attacks',2);
INSERT INTO Enchants (EnchantName,EnchantDesc,EnchantTypeID) VALUES ('Water Breathing','Gives the wearer the ability to breath under water',2);

-- Data for Races Table
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Altmer(High Elf)','Illusion - 25, Conjuration - 20, Destruction - 20, Restoration - 20, Alteration - 20, Enchanting - 20','Flames, Healing, Fury','Fortify Magicka','Highborn');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Argonian','Light Armor - 20, Sneak - 20, Lockpicking - 25, Pickpocket - 20, Restoration - 20, Alteration - 20','Flames, Healing','Resist Disease, Water Breathing','Hitskin');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Bosmer(Wood Elf)','Archery - 25, Light Armor - 20, Sneak - 20, Lockpicking - 20, Pickpocket - 20, Alchemy - 20','Flames, Healing','Resist Disease/Poison','Command Animal');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Breton','Speech - 20, Alchemy - 20, Illusion - 20, Conjuration - 25, Restoration - 20, Alteration - 20','Flames, Healing, Conjure Familiar','Magic Resistance','Dragonskin');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Dunmer(Dark Elf)','Light Armor - 20, Sneak - 20, Alchemy - 20, Illusion - 20, Destruction - 25, Alteration - 20','Flames, Healing, Sparks','Resist Fire','Ancestors Wraith');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Imperial','Heavy Armor - 20, Block - 20, One-Handed - 20, Destruction - 20, Restoration - 25, Enchanting - 20','Flames, Healing','Imperial Luck','Voice of the Emperor');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Khajiit','One-Handed - 20, Archery - 20, Sneak - 25, Lockpicking - 20, Pickpocket - 20, Alchemy - 20','Flames, Healing','Claws','Night Eye');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Nord','Smithing - 20, Block - 20, Two-Handed - 25, One-Handed - 20, Light Armor - 20, Speech - 20','Flames, Healing','Resist Frost','Battle Cry');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Orsimer(Orc)','Smithing - 20, Heavy Armor - 25, Block - 20, Two-Handed - 20, One-Handed - 20, Enchanting - 20','Flames, Healing','Bloodkin','Beserker Rage');
INSERT INTO Races (RaceName,RaceStartStats,RaceStartSpells,RaceAbility,RacePower) VALUES ('Redguard','Smithing - 20, Block - 20, One-Handed - 25, Archery - 20, Destruction - 20, Alteration - 20','Flames, Healing','Resist Poison','Adrenaline Rush');

-- Data for Smithing_Upgrades Table
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Fine',0,'Base Dmg +1','Base Def +2');
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Superior',22,'Base Dmg +3','Base Def +6');
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Exquisite',40,'Base Dmg +5','Base Def +10');
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Flawless',57,'Base Dmg +7','Base Def +13');
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Epic',74,'Base Dmg +8','Base Def +17');
INSERT INTO Smithing_Upgrades (SmithUpgradeName,SkillLevelRequire,WeaponEffect,ArmorEffect) VALUES ('Legendary',91,'Base Dmg +10','Base Def +20');

-- Data for Smithing_Types Table
INSERT INTO Smithing_Types (SmithingTypeName) VALUES ('Smelting');
INSERT INTO Smithing_Types (SmithingTypeName) VALUES ('Tanning');
INSERT INTO Smithing_Types (SmithingTypeName) VALUES ('Forging');

-- Data for Recipe_Types Table
INSERT INTO Recipe_Types (RecipeTypeName) VALUES ('Weapon Recipe');
INSERT INTO Recipe_Types (RecipeTypeName) VALUES ('Armor Recipe');

-- Data for Smithing_Recipes Table
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Corundum Ingot','Corundum Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot(3)','Bent Dwemer Scrap Metal(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot (2)','Large Decorative Dwemer Strut(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot (3)','Large Dwemer Strut(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot (3)','Large Dwemer Plate Metal(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot (3)','Small Dwemer plate metal(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Dwarven Metal Ingot (5)','Solid Dwemer metal',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Ebony Ingot','Ebony Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Gold Ingot','Gold Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Iron Ingot','Iron Ore(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Orichalcum Ingot','Orichalcum Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Quicksilver Ingot','Quicksilver Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Refined Malachite','Malachite Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Refined Moonstone','Moonstone Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Silver Ingot','Silver Ore(2)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Steel Ingot','Iron Ore(1), Corundum Ore(1)',1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Bear Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Cave Bear Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(3)','Cow Hide(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(2)','Deer Hide(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(1)','Fox Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(1)','Goat Hide(2)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(3)','Horse Hide(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(1)','Ice Wolf Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Sabre Cat Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Snow Sabre Cat Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Snow Bear Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(1)','Snow Fox Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(2)','Vale Deer Hide(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(4)','Vale Sabre Cat Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather(1)','Wolf Pelt(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,SmithingTypeID) VALUES ('Leather Strips(4)','Leather(1)',2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Dagger','Iron Ingot(1), Leather Strips(1)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Sword','Iron Ingot(2), Leather Strips(1)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Mace','Iron Ingot(3), Leather Strips(2)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron War Axe','Iron Ingot(2), Leather Strips(2)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Greatsword','Iron Ingot(4), Leather Strips(2)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Warhammer','Iron Ingot(4), Leather Strips(3)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Battleaxe','Iron Ingot(4), Leather Strips(2)',346,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Dagger','Steel Ingot(1), Iron Ingot(1), Leather Strips(1)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Sword','Steel Ingot(2), Iron Ingot(1), Leather Strips(1)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Mace','Steel Ingot(3), Iron Ingot(1), Leather Strips(1)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel War Axe','Steel Ingot(2), Iron Ingot(1), Leather Strips(2)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Greatsword','Steel Ingot(4), Iron Ingot(2), Leather Strips(3)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Warhammer','Steel Ingot(4), Iron Ingot(1), Leather Strips(3)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Battleaxe','Steel Ingot(4), Iron Ingot(1), Leather Strips(2)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Crossbow','Steel Ingot(3), Firewood(3)',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nord Hero Sword','Ancient Nord Sword(1), Steel Ingot(2), Leather Strips(2)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nord Hero War Axe','Ancient Nord War Axe(1), Steel Ingot(2), Leather Strips(2)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nord Hero Greatsword','Ancient Nord Greatsword(1), Steel Ingot(3), Leather Strips(3)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nord Hero Battleaxe','Ancient Nord Greatsword(1), Steel Ingot(3), Leather Strips(3)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nord Hero Bow','Ancient Nord Bow(1), Steel Ingot(3)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Dagger','Steel Ingot(1), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Sword','Steel Ingot(2), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Mace','Steel Ingot(3), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel War Axe','Steel Ingot(2), Iron Ingot(1), Leather Strips(2)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Greatsword','Steel Ingot(4), Iron Ingot(2), Leather Strips(3)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Warhammer','Steel Ingot(4), Iron Ingot(1), Leather Strips(3)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Skyforge Steel Battleaxe','Steel Ingot(4), Iron Ingot(1), Leather Strips(2)[Crafting with the Skyforge]',704,70,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Dagger','Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Sword','Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Mace','Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven War Axe','Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(2)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Greatsword','Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(3)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Warhammer','Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(3)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Battleaxe','Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(2)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Bow','Refined Moonstone(2), Quicksilver Ingot(1)',488,71,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Dagger','Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Sword','Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Mace','Dwarven Metal Ingot(2), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven War Axe','Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(2)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Greatsword','Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(3)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Warhammer','Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(3)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Battleaxe','Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(2)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Bow','Dwarven Metal Ingot(2), Iron Ingot(1)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Crossbow','Dwarven Metal Ingot(5)',187,72,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Dagger','Steel Ingot(1), Quicksilver Ingot(1), Leather Strips(1)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Sword','Steel Ingot(2), Quicksilver Ingot(1), Leather Strips(1)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Mace','Steel Ingot(1), Quicksilver Ingot(1), Leather Strips(1)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic War Axe','Steel Ingot(2), Quicksilver Ingot(1), Leather Strips(2)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Greatsword','Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(3)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Warhammer','Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(3)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Battleaxe','Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(2)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Bow','Steel Ingot(3), Quicksilver Ingot(1)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Crossbow','Steel Ingot(4), Quicksilver Ingot(2), Leather Strips(1)',475,73,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Dagger','Orichalcum Ingot(1), Iron Ingot(1), Leather Strips(1)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Sword','Orichalcum Ingot(2), Iron Ingot(1), Leather Strips(1)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Mace','Orichalcum Ingot(3), Iron Ingot(1), Leather Strips(1)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish War Axe','Orichalcum Ingot(2), Iron Ingot(1), Leather Strips(2)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Greatsword','Orichalcum Ingot(4), Iron Ingot(2), Leather Strips(3)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Warhammer','Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(3)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Battleaxe','Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(2)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Bow','Orichalcum Ingot(2), Iron Ingot(1)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Crossbow','Orichalcum Ingot(3), Iron Ingot(2)',439,74,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Dagger','Refined Malachite(1), Refined Moonstone(1), Leather Strips(1)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Sword','Refined Malachite(1), Refined Moonstone(1), Leather Strips(1)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Mace','Refined Malachite(2), Refined Moonstone(1), Leather Strips(1)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass War Axe','Refined Malachite(1), Refined Moonstone(1), Leather Strips(2)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Greatsword','Refined Malachite(2), Refined Moonstone(2), Leather Strips(3)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Warhammer','Refined Malachite(2), Refined Moonstone(2), Leather Strips(3)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Battleaxe','Refined Malachite(2), Refined Moonstone(2), Leather Strips(2)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Bow','Refined Malachite(2), Refined Moonstone(1)',487,76,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Dagger','Ebony Ingot(1), Leather Strips(1)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Sword','Ebony Ingot(2), Leather Strips(1)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Mace','Ebony Ingot(3), Leather Strips(1)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony War Axe','Ebony Ingot(2), Leather Strips(2)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Greatsword','Ebony Ingot(5), Leather Strips(3)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Warhammer','Ebony Ingot(5), Leather Strips(3)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Battleaxe','Ebony Ingot(5), Leather Strips(2)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Bow','Ebony Ingot(3)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Crossbow','Ebony Ingot(5)',200,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Dagger','Stalhrim(1), Leather Strips(1)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Sword','Stalhrim(2), Leather Strips(1)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Mace','Stalhrim(3), Leather Strips(1)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim War Axe','Stalhrim(2), Leather Strips(2)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Greatsword','Stalhrim(5), Leather Strips(3)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Warhammer','Stalhrim(5), Leather Strips(3)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Battleaxe','Stalhrim(5), Leather Strips(2)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Bow','Stalhrim(3)',687,77,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Dagger','Daedra Heart(1), Ebony Ingot(1), Leather Strips(1)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Sword','Daedra Heart(1), Ebony Ingot(2), Leather Strips(1)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Mace','Daedra Heart(1), Ebony Ingot(3), Leather Strips(1)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric War Axe','Daedra Heart(1), Ebony Ingot(2), Leather Strips(2)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Greatsword','Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Warhammer','Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Battleaxe','Daedra Heart(1), Ebony Ingot(5), Leather Strips(2)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Bow','Daedra Heart(1), Ebony Ingot(3), Leather Strips(1)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Crossbow','Daedra Heart(1), Ebony Ingot(4), Leather Strips(2)',200,78,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Dagger','Dragon Bone(1), Leather Strips(1)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Sword','Dragon Bone(1), Ebony Ingot(1), Leather Strips(1)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Mace','Dragon Bone(2), Ebony Ingot(1), Leather Strips(1)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone War Axe','Dragon Bone(1), Ebony Ingot(1), Leather Strips(2)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Greatsword','Dragon Bone(4), Ebony Ingot(1), Leather Strips(3)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Warhammer','Dragon Bone(3), Ebony Ingot(2), Leather Strips(3)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Battleaxe','Dragon Bone(3), Ebony Ingot(2), Leather Strips(2)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Bow','Dragon Bone(2), Ebony Ingot(1)',161,79,3,1);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonbone Crossbow','Dragon Bone(2), Ebony Ingot(2), Leather Strips(1)',161,79,3,1);

INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Hide Armor','Leather(4), Leather Strips(3)',367,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Hide Shield','Leather(4), Leather Strips(2)',367,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Leather Armor','Leather(4), Leather Strips(3)',367,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Studded Armor','Iron Ingot(1), Leather(4), Leather Strips(3)',346,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Armor','Iron Ingot(5), Leather Strips(3)',346,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Iron Shield','Iron Ingot(4), Leather Strips(1)',346,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Banded Iron Armor','Corundum Ingot(1), Iron Ingot(5), Leather Strips(3)',121,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,SmithingTypeID,RecipeTypeID) VALUES ('Banded Iron Shield','Corundum Ingot(1), Iron Ingot(4), Leather Strips(1)',121,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Armor','Steel Ingot(4), Iron Ingot(1), Leather Strips(3)',704,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Shield','Steel Ingot(3), Iron Ingot(1), Leather Strips(1)',704,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Bonemold Armor','Bone Meal(10), Netch Leather(2), Iron Ingot(1)',83,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Bonemold Shield','Bone Meal(8), Netch Leather(1), Iron Ingot(1)',83,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Imperial Light Armor','Leather Strips(3), Leather(2), Steel Ingot(2)',367,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Imperial Light Shield','Leather Strips(2), Steel Ingot(2)',367,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Imperial Armor','Leather Strips(3), Leather(2), Steel Ingot(4)',704,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Imperial Shield','Leather Strips(2), Steel Ingot(4)',704,70,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Armor','Refined Moonstone(4), Iron Ingot(1), Leather(1), Leather Strips(3)',488,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Shield','Refined Moonstone(4), Iron Ingot(1),  Leather Strips(2)',488,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Chitin Armor','Netch Leather(2), Chitin Plate(5), Iron Ingot(1)',800,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Chitin Shield','Netch Leather(1), Chitin Plate(4), Iron Ingot(1)',800,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Elven Guilded Armor','Refined Moonstone(4), Iron Ingot(1), Quicksilver Ingot(1), Leather Strips(3)',488,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Chitin Heavy Armor','Netch Leather(2), Chitin Plate(6), Corundum Ingot(1)',800,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Chitin Heavy Shield','Netch Leather(1), Chitin Plate(6), Corundum Ingot(1)',800,71,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Armor','Dwarven Metal Ingot(3), Steel Ingot(1), Iron Ingot(1), Leather Strips(3)',187,72,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dwarven Shield','Dwarven Metal Ingot(2), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)',187,72,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Scaled Armor','Steel Ingot(3), Corundum Ingot(2), Leather(2), Leather Strips(3)',121,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Steel Plate Armor','Steel Ingot(3), Corundum Ingot(2), Iron Ingot(1), Leather Strips(3)',121,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Improved Bonemold Armor','Stalhrim(1), Netch Jelly(1), Void Salts(1)',83,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Improved Bonemold Shield','Stalhrim(1), Netch Jelly(1), Void Salts(1)',83,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Carved Armor','Quicksilver Ingot(1), Ebony Ingot(1), Steel Ingot(6), Leather Strips(3)',475,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Nordic Carved Shield','Quicksilver Ingot(1), Steel Ingot(4), Leather Strips(1)',475,73,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Armor','Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(3)',439,74,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Orcish Shield','Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(1)',439,74,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Armor','Refined Malachite(4), Refined Moonstone(2), Leather(1), Leather Strips(3)',487,76,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Glass Shield','Refined Malachite(4), Refined Moonstone(1), Leather Strips(2)',487,76,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Light Armor','Stalhrim(5), Steel Ingot(1), Leather Strips(3)',687,77,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Heavy Armor','Stalhrim(6), Quicksilver Ingot(1), Leather Strips(3)',687,77,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Stalhrim Shield','Stalhrim(4), Steel Ingot(1), Leather Strips(1)',687,77,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Armor','Ebony Ingot(5), Leather Strips(3)',200,77,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ebony Shield','Ebony Ingot(4), Leather Strips(1)',200,77,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Armor','Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)',200,78,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Daedric Shield','Daedra Heart(1), Ebony Ingot(4), Leather Strips(1)',200,78,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Ancient Nord Armor','Steel Ingot(5), Iron Ingot(2), Leather(2), Leather Strips(4)[Crafting with the Skyforge]',346,78,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonscale Armor','Dragon Scale(4), Iron Ingot(2), Leather(1), Leather Strips(3)',173,79,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonscale Shield','Dragon Scale(4), Iron Ingot(2), Leather Strips(2)',173,79,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonplate Armor','Dragon Bone(2), Dragon Scale(3), Leather Strips(3)',161,79,3,2);
INSERT INTO Smithing_Recipes (SRecipeItemName,SMaterialsRequire,UpgradeMaterial,PerkRequire,SmithingTypeID,RecipeTypeID) VALUES ('Dragonplate Shield','Dragon Bone(1), Dragon Scale(3), Leather Strips(1)',161,79,3,2);

-- Data for Soul_Gems Table
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Petty',5,'Chicken, Cow, Deer, Dog, Draugr, Elk, Fox, Frostbite Spider, Goat, Horker, Mudcrab, Rabbit, Skeever, Skeleton, Slaughterfish, Wisp; Wolf');
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Lesser',10,'Ash Hopper, Bear, Chaurus, Draugr Wight, Falmer, Falmer Skulker, Flame Atronach, Giant Frostbite Spider, Horse, Ice Wolf, Ice Wraith, Restless Draugr, Riekling, Riekling Scout, Riekling Ranger, Sabre Cat, Snowy Sabre Cat, Spriggan, Troll, Werewolf');
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Commom',15,'Ash Spawn, Cave Bear, Chaurus Reaper, Draugr Scourge, Draugr Scourge Lord, Falmer Gloomlurker, Falmer Nightprowler, Falmer Shadowmaster, Frost Atronach, Frost Troll, Hagraven, Hulking Draugr, Lurker, Mounted Riekling, Riekling Warrior, Snow Bear, Seeker, Spriggan Matron');
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Greater',20,'Ash Spawn Skirmisher, Chaurus Hunter, Draugr Overlord, Draugr Deathlord, Giant, Storm Atronach, Wispmother, Riekling Rider, Riekling Courser, Spriggan Earth Mother, Burnt Spriggan');
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Grand',30,'Ash Spawn Immolater, Unbound Dremora, Dragon Priest, Draugr Death Overlord, Falmer Warmonger, Frost Giant, Mammoth, Riekling Charger');
INSERT INTO Soul_Gems (SGName,SGChargeAMT,SGCreatures) VALUES ('Black',40,'Humanoid chracters(10 playable race characters), Vampires, Dremora Lord');

-- Data for Alchemy_Types Table
INSERT INTO Alchemy_Types (ATypeName) VALUES ('Potions');
INSERT INTO Alchemy_Types (ATypeName) VALUES ('Poisons');

-- Data for Restore_Potion_Ranks Table
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Minor',25);
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Normal',50);
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Plentiful',75);
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Vigorous',100);
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Extreme',150);
INSERT INTO Restore_Potion_Ranks (RankName,RestoreAMT) VALUES ('Ultimate',200);

-- Data for Cooking_Recipes Table
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Apple Cabbage Stew','Salt Pile, Red/Green Apple, Cabbage','Restore 10 health and 15 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Beef Stew','Raw Beef, Carrot, Salt Pile, Garlic','Increases stamina by 25 points for 1 encounter and regen 5 points of stamina per turn');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Cabbage Potato Soup','Potato, Salt Pile, Leek, Cabbage','Restore 10 health and 10 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Cabbage Soup','Salt Pile, Cabbage','Restore 10 health and 8 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Clam Chowder','Clam Meat, Potato, Jug of Milk, Butter','Restore 10 health and 10 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Cooked Beef','Salt Pile, Raw Beef','Restore 10 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Elsweyr Fondue','Eidar Cheese Wedge, Moon Sugar, Ale','Gain 5 magicka regen and 100 magicka for 1 encounter');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Grilled Chicked Breast','Chicken Breast, Salt Pile','Restore 5 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Horker Loaf','Salt Pile, Horker Meat','Restore 15 health and 15 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Horker Stew','Lavender, Tomato, Garlic, Horker Meat','Restore 15 health and 15 stamina and regen 5 health per turn for 1 encounter');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Horker and Ash Yam Stew','Ash Yam, Garlic, Horker Meat','Restore 16 health and 12 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Horse Haunch','Salt Pile, Horse Meat','Restore 10 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Leg of Goat Haunch','Salt Pile, Leg of Goat','Restore 10 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Mammoth Steak','Salt Pile, Mammoth Snout','Restore 10 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Pheasant Roast','Salt Pile, Pheasant Breast','Restore 5 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Potato Soup','Potato, Salt Pile','Restore 10 health and 10 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Rabbit Haunch','Salt Pile, Raw Rabbit Leg','Restore 5 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Salmon Steak','Salt Pile, Salmon Meat','Restore 5 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Steamed Mudcrab Legs','Mudcrab Legs, Butter','Restore 12 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Tomato Soup','Tomato, Salt Pile, Garlic, Leek','Restore 10 health and 10 stamina');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Vegetable Soup','Cabbage, Potato, Leek, Tomato','Regen 5 health and 5 stamina per turn for 1 encounter');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Venison Chop','Salt Pile, Venison','Restore 5 health');
INSERT INTO Cooking_Recipes (CRecipeItemName,CMaterialsRequire,RecipeEffect) VALUES ('Venison Stew','Venison, Salt Pile, Potato, Leek','Restore 15 stamina and regen 5 health and stamina per turn for 1 encounter');

-- Data for FD_Types Table
INSERT INTO FD_Types (FDTYPEName) VALUES ('Ingredients');
INSERT INTO FD_Types (FDTYPEName) VALUES ('Food');
INSERT INTO FD_Types (FDTYPEName) VALUES ('Drink');

-- Data for Food_and_Drink Table
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Ale','15 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Ash Yam','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Butter','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cabbage','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Carrot','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Chicken Breast','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Clam Meat','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Eidar Cheese Wheel','15 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horker Meat','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horse Meat','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Jug of Milk','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Leek','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Leg of Goat','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Mammoth Snout','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Mudcrab Legs','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Pheasant Breast','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Potato','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Raw Beef','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Raw Rabbit Leg','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Red Apple','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Green Apple','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Salmon Meat','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Tomato','1 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Venison','2 health',1);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Apple Cabbage Stew','10 health and 15 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Beef Stew','None(extra effects in cooking table)',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cabbage Potato Soup','10 health and 10 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cabbage Soup','10 health and 8 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Clam Chowder','10 health and 10 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cooked Beef','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Elsweyr Fondue','None(extra effects in cooking table)',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Grilled Chicked Breast','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horker Loaf','15 health and 15 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horker Stew','15 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horker and Ash Yam Stew','16 health and 12 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Horse Haunch','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Leg of Goat Haunch','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Mammoth Steak','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Pheasant Roast','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Potato Soup','10 health	and 10 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Rabbit Haunch','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Salmon Steak','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Steamed Mudcrab Legs','12 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Tomato Soup','10 health	and 10 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Vegetable Soup','5 health and 5 stamina per turn',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Venison Chop','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Venison Stew','15 stamina and 5 health and stamina per turn',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Apple Dumpling','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Apple Pie','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Ash Hopper Leg','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Ash Hopper Meat','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Baked Potatos','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Boar Meat','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Boiled Cream Treat','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Braided Bread','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Bread','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Charred Skeever Meat','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cooked Boar Meat','12 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Dog Meat','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Eidar Cheese Wedge','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Fresh Meat','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Gralic Bread','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Goat Cheese Wedge','2 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Goat Cheese Wheel','15 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Gourd','1 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Grilled Leaks','6 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Homecooked Meal','20 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Honey Nut Treat','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Jazbay Crostata','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Juniper Berry Crostata','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Lavender Dumpling','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Long Taffy Treat','10 health and 5 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Mammoth Cheese Bowl','10 health and 15 stamina',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Potato Bread','3 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Sack of Flour','1 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Seared Slaughterfish','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Sliced Eidar Cheese','15 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Sliced Goat Cheese','15 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Snowberry Crostata','10 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Soul Husk','1 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Spiced Beef','5 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Sweet Roll','20 health',2);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Alto Wine','15 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Argonian Ale','15 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Argonian Bloodwine','10 poison resist for 1 encounter',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Ashfire Mead','40 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Balmora Blue','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Black-Briar Mead','20 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Black-Briar Reserve','30 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cliff Racer','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Colovian Brandy','25 stamina + Speech Buff(1 additional charisma dice for a day)',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Cyrodilic Brandy','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Double Distilled Skooma','50 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Dragons Breath Mead','20 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Emberbrand Wine','60 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Firebrand Wine','20 stamina + 15 Frost Resist for 1 encounter',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Flin','20 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Honningbrew Mead','20 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Matze','10 stamina + 10 Frost Resist for 1 encounter',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Nord Mead','15 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Redwater Skooma','40 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Shein','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Skooma','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Spiced Wine','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Sujamma','15 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Velvet LeChance','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('White-Gold Tower','25 stamina',3);
INSERT INTO Food_and_Drink (FDName, FDRestore, FDTYPEID) VALUES ('Wine','15 stamina',3);

-- Data for Alchemy Table
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Cure Disease','Charred Skeever Hide; Felsaad Tern Feathers; Hawk Feathers; Mudcrab Chitin; Vampire Dust','Cures any given disease',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Alteration','Burnt Spriggan Wood; Grass Pod; River Betty; Spriggan Sap','Alteration spells cost 25% less mana for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Barter','Butterfly Wing; Dragons Tongue; Hagraven Claw; Tundra Cotton','Prices for all items are 10% less for a single visit to a shop',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Block','Bleeding Crown; Boar Tusk; Briar Heart; Honeycomb; Pearl; Slaughterfish Scales; Tundra Cotton','Block 5 more damage when you block for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Conjuration','Ancestor Moth Wing; Blue Butterfly Wing; Blue Mountain Flower; Bone Meal; Chaurus Hunter Antennae; Frost Salts; Hagraven Feathers; Lavender','Conjuration spells cost 25% less mana for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Destruction','Ash Creep Cluster; Beehive Husk; Ectoplasm; Glow Dust; Glowing Mushroom; Nightshade; Wisp Wrappings','Destruction spells cost 25% less mana for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Health','Bear Claws; Blue Mountain Flower; Boar Tusk; Giants Toe; Glowing Mushroom; Hanging Moss; Wheat; Yellow Mountain Flower','Increases max health by 20 points for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Illusion','Dragons Tongue; Dwarven Oil; Mora Tapinella; Scaly Pholiota; Taproot','Illusion spells cost 25% less mana for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Lockpicking','Ashen Grass Pod; Falmer Ear; Namiras Rot; Pine Thrush Egg; Spider Egg','Adds 1 dice for 1 lockpicking check',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Magicka','Briar Heart; Ectoplasm; Emperor Parasol Moss; Fine-Cut Void Salts; Histcarp; Jazbay Grapes; Red Mountain Flower; Salmon Roe; Tundra Cotton; Void Salts','Increases max magicka by 20 points for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Archery','Canis Root; Elves Ear; Juniper Berries; Spider Egg','Bows do 10 more damage for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify One-Handed','Bear Claws; Canis Root; Hanging Moss; Hawk Feathers; Rock Warbler Egg; Small Pearl','One-Handed weapons deal 10 more damage for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Pickpocket','Blue Dartwing; Nordic Barnacle; Orange Dartwing; Slaughterfish Egg','Adds 1 dice for 1 pickpocket check',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Restoration','Abecean Longfin; Cyrodilic Spadetail; Salt Pile; Small Antlers; Small Pearl; Yellow Mountain Flower','Restoration spells cost 25% less mana for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Sneak','Abecean Longfin; Ashen Grass Pod; Beehive Husk; Frost Mirriam; Hawk Feathers; Human Flesh; Powdered Mammoth Tusk; Purple Mountain Flower','Adds 1 dice for 1 sneak check',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Stamina','Boar Tusk; Chaurus Eggs; Garlic; Large Antlers; Lavender; Slaughterfish Egg; Torchbug Thorax','Increases max magicka by 20 points for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fortify Two-Handed','Dragons Tongue; Emperor Parasol Moss; Fly Amanita; Troll Fat','Two-Handed weapons deal 10 more damage for 2 turns',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Invisibility','Ash Creep Cluster ; Chaurus Eggs; Crimson Nirnroot; Ice Wraith Teeth; Luna Moth Wing; Nirnroot; Vampire Dust','User turns invisible for a certain amount of time',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Regen Health','Emperor Parasol Moss; Garlic; Gleamblossom; Juniper Berries; Luna Moth Wing; Namiras Rot; Nordic Barnacle; Vampire Dust','Regen 5 additional health per turn for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Regen Magicka','Dwarven Oil; Fire Salts; Garlic; Jazbay Grapes; Moon Sugar; Salmon Roe; Salt Pile; Taproot','Regen 5 additional magicka per turn for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Regen Stamina','Bee; Fly Amanita; Mora Tapinella; Scaly Pholiota','Regen 5 additional stamina per turn for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Resist Fire','Ash Creep Cluster; Ashen Grass Pod; Bone Meal; Dragons Tongue; Elves Ear; Fire Salts; Fly Amanita; Mudcrab Chitin; Snowberries; Spawn Ash','User takes 50% less damage from fire attacks for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Resist Frost','Frost Mirriam; Frost Salts; Hawk Beak; Moon Sugar; Purple Mountain Flower; Silverside Perch; Slaughterfish Scales; Small Pearl; Snowberries; Thistle Branch','User takes 50% less damage from frost attacks for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Resist Magic','Bleeding Crown; Chickens Egg; Crimson Nirnroot; Felsaad Tern Feathers; Fine-Cut Void Salts; Gleamblossom; Hagraven Claw; Hawks Egg; Lavender; Nirnroot; Tundra Cotton; Void Salts; Wisp Wrappings','User takes 10 less damage from all magic attacks for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Resist Poison','Beehive Husk; Charred Skeever Hide; Falmer Ear; Garlic; Grass Pod; Mudcrab Chitin; Slaughterfish Egg; Thistle Branch; Troll Fat; Yellow Mountain Flower','User takes 50% less damage from poison for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Resist Shock','Ash Hopper Jelly; Blue Dartwing; Glow Dust; Glowing Mushroom; Hawk Beak; Pearl; Pine Thrush Egg; Snowberries; Swamp Fungal Pod','User takes 50% less damage from shock attacks for 1 encounter',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Restore Health','Ash Hopper Jelly; Blisterwort; Blue Dartwing; Blue Mountain Flower; Butterfly Wing; Charred Skeever Hide; Daedra Heart; Eye of Sabre Cat; Felsaad Tern Feathers; Imp Stool; Rock Warbler Egg; Swamp Fungal Pod; Wheat','Restore 20 points of health',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Restore Magicka','Briar Heart; Creep Cluster; Dwarven Oil; Ectoplasm; Elves Ear; Fire Salts; Frost Salts; Giant Lichen; Grass Pod; Human Flesh; Moon Sugar; Mora Tapinella; Pearl; Red Mountain Flower; Taproot; Vampire Dust; White Cap','Restore 20 points of magicka',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Restore Stamina','Bear Claws; Bee; Charred Skeever Hide; Eye of Sabre Cat; Hawk Beak; Histcarp; Honeycomb; Large Antlers; Mudcrab Chitin; Netch Jelly; Orange Dartwing; Pearl; Pine Thrush Egg; Powdered Mammoth Tusk; Purple Mountain Flower; Sabre Cat Tooth; Salmon Roe; Silverside Perch; Small Pearl; Torchbug Thorax; Wisp Wrappings','Restore 20 points of stamina',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Waterbreathing','Chickens Egg; Fish(Any); Hawks Egg; Histcarp; Nordic Barnacle; Salmon Roe','User can breathe underwater for a certain amount of time',1);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Damage Health','Crimson Nirnroot; Deathbell; Ectoplasm; Emperor Parasol Moss; Falmer Ear; Fine-Cut Void Salts; Human Flesh; Human Heart; Imp Stool; Jarrin Root; Nightshade; Nirnroot; Poison Bloom ; Red Mountain Flower; River Betty; Skeever Tail; Small Antlers; Troll Fat; Void Salts','Deals 10 damage to Health',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Damage Magicka','Butterfly Wing; Chaurus Eggs; Daedra Heart; Eye of Sabre Cat; Glow Dust; Hagraven Feathers; Hanging Moss; Human Heart; Jarrin Root; Luna Moth Wing; Namiras Rot; Nordic Barnacle; Trama Root','Deals 10 damage to Magicka',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Damage Stamina','Ancestor Moth Wing; Ash Creep Cluster; Blisterwort; Blue Butterfly Wing; Bone Meal; Canis Root; Chaurus Hunter Antennae; Crimson Nirnroot; Cyrodilic Spadetail; Giants Toe; Jarrin Root; Nirnroot; Rock Warbler Egg; Spider Egg','Deals 10 damage to Stamina',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Fear','Blue Dartwing; Cyrodilic Spadetail; Daedra Heart; Gleamblossom; Namiras Rot; Netch Jelly; Poison Bloom; Powdered Mammoth Tusk','Targets up to level 14 flee for 1 turn',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Frenzy','Blisterwort; Boar Tusk; Falmer Ear; Fly Amanita; Hagraven Feathers; Human Heart; Troll Fat','Targets up to level 14 will attack a nearby enemy',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Paralysis','Briar Heart; Canis Root; Gleamblossom; Human Flesh; Imp Stool; Netch Jelly; Swamp Fungal Pod','Targets that fail to resist are paralyzed for 2 turns',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Slow','Burnt Spriggan Woodl Deathbell; Large Antlers; Poison Bloom; River Betty; Salt Pile; Trama Root','Target gets to go last for 2 rounds',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Weakness to Fire','Bleeding Crown; Burnt Spriggan Wood; Frost Salts; Ice Wraith Teeth; Juniper Berries; Moon Sugar; Powdered Mammoth Tusk','Target takes 50% more damage from fire attacks for 2 turns',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Weakness to Frost','Abecean Longfin; Ash Hopper Jelly; Elves Ear; Fire Salts; Ice Wraith Teeth; White Cap','Target takes 50% more damage from frost attacks for 2 turns',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Weakness to Magic','Creep Cluster; Dwarven Oil; Jazbay Grapes; Rock Warbler Egg; Salt Pile; Scaly Pholiota; Taproot; Torchbug Thorax','Target takes 10 more damage from all magic attacks for 2 turns',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Weakness to Poison','Abecean Longfin; Bleeding Crown; Chaurus Eggs; Deathbell; Giant Lichen; Pine Thrush Egg; Sabre Cat Tooth; Small Antlers','Target takes 50% more damage from damaging poisons for 2 turns',2);
INSERT INTO Alchemy (AName, AIngredients, AEffect, ATypeID) VALUES ('Weakness to Shock','Ashen Grass Pod; Bee; Fine-Cut Void Salts; Giant Lichen; Hagraven Feathers; Trama Root; Void Salts','Target takes 50% more damage from shock attacks for 2 turns',2);