{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Studio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Studio where

import Network.AWS.EMR.Types.AuthMode
import Network.AWS.EMR.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details for an Amazon EMR Studio including ID, creation time, name, and so on.
--
--
--
-- /See:/ 'studio' smart constructor.
data Studio = Studio'
  { _stutCreationTime ::
      !(Maybe POSIX),
    _stutServiceRole :: !(Maybe Text),
    _stutWorkspaceSecurityGroupId :: !(Maybe Text),
    _stutDefaultS3Location :: !(Maybe Text),
    _stutAuthMode :: !(Maybe AuthMode),
    _stutSubnetIds :: !(Maybe [Text]),
    _stutUserRole :: !(Maybe Text),
    _stutName :: !(Maybe Text),
    _stutTags :: !(Maybe [Tag]),
    _stutDescription :: !(Maybe Text),
    _stutURL :: !(Maybe Text),
    _stutVPCId :: !(Maybe Text),
    _stutStudioARN :: !(Maybe Text),
    _stutStudioId :: !(Maybe Text),
    _stutEngineSecurityGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Studio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stutCreationTime' - The time the Amazon EMR Studio was created.
--
-- * 'stutServiceRole' - The name of the IAM role assumed by the Amazon EMR Studio.
--
-- * 'stutWorkspaceSecurityGroupId' - The ID of the Workspace security group associated with the Amazon EMR Studio. The Workspace security group allows outbound network traffic to resources in the Engine security group and to the internet.
--
-- * 'stutDefaultS3Location' - The default Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
--
-- * 'stutAuthMode' - Specifies whether the Amazon EMR Studio authenticates users using single sign-on (SSO) or IAM.
--
-- * 'stutSubnetIds' - The list of IDs of the subnets associated with the Amazon EMR Studio.
--
-- * 'stutUserRole' - The name of the IAM role assumed by users logged in to the Amazon EMR Studio.
--
-- * 'stutName' - The name of the Amazon EMR Studio.
--
-- * 'stutTags' - A list of tags associated with the Amazon EMR Studio.
--
-- * 'stutDescription' - The detailed description of the Amazon EMR Studio.
--
-- * 'stutURL' - The unique access URL of the Amazon EMR Studio.
--
-- * 'stutVPCId' - The ID of the VPC associated with the Amazon EMR Studio.
--
-- * 'stutStudioARN' - The Amazon Resource Name (ARN) of the Amazon EMR Studio.
--
-- * 'stutStudioId' - The ID of the Amazon EMR Studio.
--
-- * 'stutEngineSecurityGroupId' - The ID of the Engine security group associated with the Amazon EMR Studio. The Engine security group allows inbound network traffic from resources in the Workspace security group.
studio ::
  Studio
studio =
  Studio'
    { _stutCreationTime = Nothing,
      _stutServiceRole = Nothing,
      _stutWorkspaceSecurityGroupId = Nothing,
      _stutDefaultS3Location = Nothing,
      _stutAuthMode = Nothing,
      _stutSubnetIds = Nothing,
      _stutUserRole = Nothing,
      _stutName = Nothing,
      _stutTags = Nothing,
      _stutDescription = Nothing,
      _stutURL = Nothing,
      _stutVPCId = Nothing,
      _stutStudioARN = Nothing,
      _stutStudioId = Nothing,
      _stutEngineSecurityGroupId = Nothing
    }

-- | The time the Amazon EMR Studio was created.
stutCreationTime :: Lens' Studio (Maybe UTCTime)
stutCreationTime = lens _stutCreationTime (\s a -> s {_stutCreationTime = a}) . mapping _Time

-- | The name of the IAM role assumed by the Amazon EMR Studio.
stutServiceRole :: Lens' Studio (Maybe Text)
stutServiceRole = lens _stutServiceRole (\s a -> s {_stutServiceRole = a})

-- | The ID of the Workspace security group associated with the Amazon EMR Studio. The Workspace security group allows outbound network traffic to resources in the Engine security group and to the internet.
stutWorkspaceSecurityGroupId :: Lens' Studio (Maybe Text)
stutWorkspaceSecurityGroupId = lens _stutWorkspaceSecurityGroupId (\s a -> s {_stutWorkspaceSecurityGroupId = a})

-- | The default Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
stutDefaultS3Location :: Lens' Studio (Maybe Text)
stutDefaultS3Location = lens _stutDefaultS3Location (\s a -> s {_stutDefaultS3Location = a})

-- | Specifies whether the Amazon EMR Studio authenticates users using single sign-on (SSO) or IAM.
stutAuthMode :: Lens' Studio (Maybe AuthMode)
stutAuthMode = lens _stutAuthMode (\s a -> s {_stutAuthMode = a})

-- | The list of IDs of the subnets associated with the Amazon EMR Studio.
stutSubnetIds :: Lens' Studio [Text]
stutSubnetIds = lens _stutSubnetIds (\s a -> s {_stutSubnetIds = a}) . _Default . _Coerce

-- | The name of the IAM role assumed by users logged in to the Amazon EMR Studio.
stutUserRole :: Lens' Studio (Maybe Text)
stutUserRole = lens _stutUserRole (\s a -> s {_stutUserRole = a})

-- | The name of the Amazon EMR Studio.
stutName :: Lens' Studio (Maybe Text)
stutName = lens _stutName (\s a -> s {_stutName = a})

-- | A list of tags associated with the Amazon EMR Studio.
stutTags :: Lens' Studio [Tag]
stutTags = lens _stutTags (\s a -> s {_stutTags = a}) . _Default . _Coerce

-- | The detailed description of the Amazon EMR Studio.
stutDescription :: Lens' Studio (Maybe Text)
stutDescription = lens _stutDescription (\s a -> s {_stutDescription = a})

-- | The unique access URL of the Amazon EMR Studio.
stutURL :: Lens' Studio (Maybe Text)
stutURL = lens _stutURL (\s a -> s {_stutURL = a})

-- | The ID of the VPC associated with the Amazon EMR Studio.
stutVPCId :: Lens' Studio (Maybe Text)
stutVPCId = lens _stutVPCId (\s a -> s {_stutVPCId = a})

-- | The Amazon Resource Name (ARN) of the Amazon EMR Studio.
stutStudioARN :: Lens' Studio (Maybe Text)
stutStudioARN = lens _stutStudioARN (\s a -> s {_stutStudioARN = a})

-- | The ID of the Amazon EMR Studio.
stutStudioId :: Lens' Studio (Maybe Text)
stutStudioId = lens _stutStudioId (\s a -> s {_stutStudioId = a})

-- | The ID of the Engine security group associated with the Amazon EMR Studio. The Engine security group allows inbound network traffic from resources in the Workspace security group.
stutEngineSecurityGroupId :: Lens' Studio (Maybe Text)
stutEngineSecurityGroupId = lens _stutEngineSecurityGroupId (\s a -> s {_stutEngineSecurityGroupId = a})

instance FromJSON Studio where
  parseJSON =
    withObject
      "Studio"
      ( \x ->
          Studio'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "WorkspaceSecurityGroupId")
            <*> (x .:? "DefaultS3Location")
            <*> (x .:? "AuthMode")
            <*> (x .:? "SubnetIds" .!= mempty)
            <*> (x .:? "UserRole")
            <*> (x .:? "Name")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "Url")
            <*> (x .:? "VpcId")
            <*> (x .:? "StudioArn")
            <*> (x .:? "StudioId")
            <*> (x .:? "EngineSecurityGroupId")
      )

instance Hashable Studio

instance NFData Studio
