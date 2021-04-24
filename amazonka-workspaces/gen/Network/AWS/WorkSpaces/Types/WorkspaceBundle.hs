{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceBundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceBundle where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.ComputeType
import Network.AWS.WorkSpaces.Types.RootStorage
import Network.AWS.WorkSpaces.Types.UserStorage

-- | Describes a WorkSpace bundle.
--
--
--
-- /See:/ 'workspaceBundle' smart constructor.
data WorkspaceBundle = WorkspaceBundle'
  { _wbRootStorage ::
      !(Maybe RootStorage),
    _wbBundleId :: !(Maybe Text),
    _wbUserStorage :: !(Maybe UserStorage),
    _wbImageId :: !(Maybe Text),
    _wbName :: !(Maybe Text),
    _wbOwner :: !(Maybe Text),
    _wbDescription :: !(Maybe Text),
    _wbComputeType :: !(Maybe ComputeType),
    _wbLastUpdatedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WorkspaceBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wbRootStorage' - The size of the root volume.
--
-- * 'wbBundleId' - The bundle identifier.
--
-- * 'wbUserStorage' - The size of the user storage.
--
-- * 'wbImageId' - The image identifier of the bundle.
--
-- * 'wbName' - The name of the bundle.
--
-- * 'wbOwner' - The owner of the bundle. This is the account identifier of the owner, or @AMAZON@ if the bundle is provided by AWS.
--
-- * 'wbDescription' - A description.
--
-- * 'wbComputeType' - The compute type. For more information, see <http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles Amazon WorkSpaces Bundles> .
--
-- * 'wbLastUpdatedTime' - The last time that the bundle was updated.
workspaceBundle ::
  WorkspaceBundle
workspaceBundle =
  WorkspaceBundle'
    { _wbRootStorage = Nothing,
      _wbBundleId = Nothing,
      _wbUserStorage = Nothing,
      _wbImageId = Nothing,
      _wbName = Nothing,
      _wbOwner = Nothing,
      _wbDescription = Nothing,
      _wbComputeType = Nothing,
      _wbLastUpdatedTime = Nothing
    }

-- | The size of the root volume.
wbRootStorage :: Lens' WorkspaceBundle (Maybe RootStorage)
wbRootStorage = lens _wbRootStorage (\s a -> s {_wbRootStorage = a})

-- | The bundle identifier.
wbBundleId :: Lens' WorkspaceBundle (Maybe Text)
wbBundleId = lens _wbBundleId (\s a -> s {_wbBundleId = a})

-- | The size of the user storage.
wbUserStorage :: Lens' WorkspaceBundle (Maybe UserStorage)
wbUserStorage = lens _wbUserStorage (\s a -> s {_wbUserStorage = a})

-- | The image identifier of the bundle.
wbImageId :: Lens' WorkspaceBundle (Maybe Text)
wbImageId = lens _wbImageId (\s a -> s {_wbImageId = a})

-- | The name of the bundle.
wbName :: Lens' WorkspaceBundle (Maybe Text)
wbName = lens _wbName (\s a -> s {_wbName = a})

-- | The owner of the bundle. This is the account identifier of the owner, or @AMAZON@ if the bundle is provided by AWS.
wbOwner :: Lens' WorkspaceBundle (Maybe Text)
wbOwner = lens _wbOwner (\s a -> s {_wbOwner = a})

-- | A description.
wbDescription :: Lens' WorkspaceBundle (Maybe Text)
wbDescription = lens _wbDescription (\s a -> s {_wbDescription = a})

-- | The compute type. For more information, see <http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles Amazon WorkSpaces Bundles> .
wbComputeType :: Lens' WorkspaceBundle (Maybe ComputeType)
wbComputeType = lens _wbComputeType (\s a -> s {_wbComputeType = a})

-- | The last time that the bundle was updated.
wbLastUpdatedTime :: Lens' WorkspaceBundle (Maybe UTCTime)
wbLastUpdatedTime = lens _wbLastUpdatedTime (\s a -> s {_wbLastUpdatedTime = a}) . mapping _Time

instance FromJSON WorkspaceBundle where
  parseJSON =
    withObject
      "WorkspaceBundle"
      ( \x ->
          WorkspaceBundle'
            <$> (x .:? "RootStorage")
            <*> (x .:? "BundleId")
            <*> (x .:? "UserStorage")
            <*> (x .:? "ImageId")
            <*> (x .:? "Name")
            <*> (x .:? "Owner")
            <*> (x .:? "Description")
            <*> (x .:? "ComputeType")
            <*> (x .:? "LastUpdatedTime")
      )

instance Hashable WorkspaceBundle

instance NFData WorkspaceBundle
