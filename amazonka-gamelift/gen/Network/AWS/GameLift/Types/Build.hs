{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.Build
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.Build where

import Network.AWS.GameLift.Types.BuildStatus
import Network.AWS.GameLift.Types.OperatingSystem
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties describing a custom game build.
--
--
-- __Related operations__
--
--     * 'CreateBuild'
--
--     * 'ListBuilds'
--
--     * 'DescribeBuild'
--
--     * 'UpdateBuild'
--
--     * 'DeleteBuild'
--
--
--
--
-- /See:/ 'build' smart constructor.
data Build = Build'
  { _bStatus :: !(Maybe BuildStatus),
    _bCreationTime :: !(Maybe POSIX),
    _bVersion :: !(Maybe Text),
    _bName :: !(Maybe Text),
    _bSizeOnDisk :: !(Maybe Nat),
    _bBuildARN :: !(Maybe Text),
    _bBuildId :: !(Maybe Text),
    _bOperatingSystem :: !(Maybe OperatingSystem)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bStatus' - Current status of the build. Possible build statuses include the following:     * __INITIALIZED__ -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.      * __READY__ -- The game build has been successfully uploaded. You can now create new fleets for this build.     * __FAILED__ -- The game build upload failed. You cannot create new fleets for this build.
--
-- * 'bCreationTime' - Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'bVersion' - Version information that is associated with a build or script. Version strings do not need to be unique. This value can be set using 'CreateBuild' or 'UpdateBuild' .
--
-- * 'bName' - A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using 'CreateBuild' or 'UpdateBuild' .
--
-- * 'bSizeOnDisk' - File size of the uploaded game build, expressed in bytes. When the build status is @INITIALIZED@ , this value is 0.
--
-- * 'bBuildARN' - Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift build resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift build ARN, the resource ID matches the /BuildId/ value.
--
-- * 'bBuildId' - A unique identifier for a build.
--
-- * 'bOperatingSystem' - Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.
build ::
  Build
build =
  Build'
    { _bStatus = Nothing,
      _bCreationTime = Nothing,
      _bVersion = Nothing,
      _bName = Nothing,
      _bSizeOnDisk = Nothing,
      _bBuildARN = Nothing,
      _bBuildId = Nothing,
      _bOperatingSystem = Nothing
    }

-- | Current status of the build. Possible build statuses include the following:     * __INITIALIZED__ -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.      * __READY__ -- The game build has been successfully uploaded. You can now create new fleets for this build.     * __FAILED__ -- The game build upload failed. You cannot create new fleets for this build.
bStatus :: Lens' Build (Maybe BuildStatus)
bStatus = lens _bStatus (\s a -> s {_bStatus = a})

-- | Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
bCreationTime :: Lens' Build (Maybe UTCTime)
bCreationTime = lens _bCreationTime (\s a -> s {_bCreationTime = a}) . mapping _Time

-- | Version information that is associated with a build or script. Version strings do not need to be unique. This value can be set using 'CreateBuild' or 'UpdateBuild' .
bVersion :: Lens' Build (Maybe Text)
bVersion = lens _bVersion (\s a -> s {_bVersion = a})

-- | A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using 'CreateBuild' or 'UpdateBuild' .
bName :: Lens' Build (Maybe Text)
bName = lens _bName (\s a -> s {_bName = a})

-- | File size of the uploaded game build, expressed in bytes. When the build status is @INITIALIZED@ , this value is 0.
bSizeOnDisk :: Lens' Build (Maybe Natural)
bSizeOnDisk = lens _bSizeOnDisk (\s a -> s {_bSizeOnDisk = a}) . mapping _Nat

-- | Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) that is assigned to a GameLift build resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift build ARN, the resource ID matches the /BuildId/ value.
bBuildARN :: Lens' Build (Maybe Text)
bBuildARN = lens _bBuildARN (\s a -> s {_bBuildARN = a})

-- | A unique identifier for a build.
bBuildId :: Lens' Build (Maybe Text)
bBuildId = lens _bBuildId (\s a -> s {_bBuildId = a})

-- | Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.
bOperatingSystem :: Lens' Build (Maybe OperatingSystem)
bOperatingSystem = lens _bOperatingSystem (\s a -> s {_bOperatingSystem = a})

instance FromJSON Build where
  parseJSON =
    withObject
      "Build"
      ( \x ->
          Build'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "SizeOnDisk")
            <*> (x .:? "BuildArn")
            <*> (x .:? "BuildId")
            <*> (x .:? "OperatingSystem")
      )

instance Hashable Build

instance NFData Build
