{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.DirectoryDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectoryDescription where

import Network.AWS.DirectoryService.Types.DirectoryConnectSettingsDescription
import Network.AWS.DirectoryService.Types.DirectoryEdition
import Network.AWS.DirectoryService.Types.DirectorySize
import Network.AWS.DirectoryService.Types.DirectoryStage
import Network.AWS.DirectoryService.Types.DirectoryType
import Network.AWS.DirectoryService.Types.DirectoryVPCSettingsDescription
import Network.AWS.DirectoryService.Types.OwnerDirectoryDescription
import Network.AWS.DirectoryService.Types.RadiusSettings
import Network.AWS.DirectoryService.Types.RadiusStatus
import Network.AWS.DirectoryService.Types.RegionsInfo
import Network.AWS.DirectoryService.Types.ShareMethod
import Network.AWS.DirectoryService.Types.ShareStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an AWS Directory Service directory.
--
--
--
-- /See:/ 'directoryDescription' smart constructor.
data DirectoryDescription = DirectoryDescription'
  { _ddRadiusStatus ::
      !(Maybe RadiusStatus),
    _ddAlias :: !(Maybe Text),
    _ddShareNotes ::
      !(Maybe (Sensitive Text)),
    _ddConnectSettings ::
      !( Maybe
           DirectoryConnectSettingsDescription
       ),
    _ddVPCSettings ::
      !( Maybe
           DirectoryVPCSettingsDescription
       ),
    _ddStageReason ::
      !(Maybe Text),
    _ddLaunchTime ::
      !(Maybe POSIX),
    _ddRegionsInfo ::
      !(Maybe RegionsInfo),
    _ddShortName :: !(Maybe Text),
    _ddShareMethod ::
      !(Maybe ShareMethod),
    _ddAccessURL :: !(Maybe Text),
    _ddName :: !(Maybe Text),
    _ddStage ::
      !(Maybe DirectoryStage),
    _ddEdition ::
      !(Maybe DirectoryEdition),
    _ddDirectoryId ::
      !(Maybe Text),
    _ddShareStatus ::
      !(Maybe ShareStatus),
    _ddOwnerDirectoryDescription ::
      !( Maybe
           OwnerDirectoryDescription
       ),
    _ddDescription ::
      !(Maybe Text),
    _ddType ::
      !(Maybe DirectoryType),
    _ddDNSIPAddrs ::
      !(Maybe [Text]),
    _ddRadiusSettings ::
      !(Maybe RadiusSettings),
    _ddDesiredNumberOfDomainControllers ::
      !(Maybe Nat),
    _ddSize ::
      !(Maybe DirectorySize),
    _ddStageLastUpdatedDateTime ::
      !(Maybe POSIX),
    _ddSSOEnabled ::
      !(Maybe Bool)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DirectoryDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddRadiusStatus' - The status of the RADIUS MFA server connection.
--
-- * 'ddAlias' - The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as @d-XXXXXXXXXX@ .
--
-- * 'ddShareNotes' - A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.
--
-- * 'ddConnectSettings' - A 'DirectoryConnectSettingsDescription' object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.
--
-- * 'ddVPCSettings' - A 'DirectoryVpcSettingsDescription' object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.
--
-- * 'ddStageReason' - Additional information about the directory stage.
--
-- * 'ddLaunchTime' - Specifies when the directory was created.
--
-- * 'ddRegionsInfo' - Lists the Regions where the directory has replicated.
--
-- * 'ddShortName' - The short name of the directory.
--
-- * 'ddShareMethod' - The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (@ORGANIZATIONS@ ) or with any AWS account by sending a shared directory request (@HANDSHAKE@ ).
--
-- * 'ddAccessURL' - The access URL for the directory, such as @http://<alias>.awsapps.com@ . If no alias has been created for the directory, @<alias>@ is the directory identifier, such as @d-XXXXXXXXXX@ .
--
-- * 'ddName' - The fully qualified name of the directory.
--
-- * 'ddStage' - The current stage of the directory.
--
-- * 'ddEdition' - The edition associated with this directory.
--
-- * 'ddDirectoryId' - The directory identifier.
--
-- * 'ddShareStatus' - Current directory status of the shared AWS Managed Microsoft AD directory.
--
-- * 'ddOwnerDirectoryDescription' - Describes the AWS Managed Microsoft AD directory in the directory owner account.
--
-- * 'ddDescription' - The description for the directory.
--
-- * 'ddType' - The directory size.
--
-- * 'ddDNSIPAddrs' - The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.
--
-- * 'ddRadiusSettings' - A 'RadiusSettings' object that contains information about the RADIUS server configured for this directory.
--
-- * 'ddDesiredNumberOfDomainControllers' - The desired number of domain controllers in the directory if the directory is Microsoft AD.
--
-- * 'ddSize' - The directory size.
--
-- * 'ddStageLastUpdatedDateTime' - The date and time that the stage was last updated.
--
-- * 'ddSSOEnabled' - Indicates if single sign-on is enabled for the directory. For more information, see 'EnableSso' and 'DisableSso' .
directoryDescription ::
  DirectoryDescription
directoryDescription =
  DirectoryDescription'
    { _ddRadiusStatus = Nothing,
      _ddAlias = Nothing,
      _ddShareNotes = Nothing,
      _ddConnectSettings = Nothing,
      _ddVPCSettings = Nothing,
      _ddStageReason = Nothing,
      _ddLaunchTime = Nothing,
      _ddRegionsInfo = Nothing,
      _ddShortName = Nothing,
      _ddShareMethod = Nothing,
      _ddAccessURL = Nothing,
      _ddName = Nothing,
      _ddStage = Nothing,
      _ddEdition = Nothing,
      _ddDirectoryId = Nothing,
      _ddShareStatus = Nothing,
      _ddOwnerDirectoryDescription = Nothing,
      _ddDescription = Nothing,
      _ddType = Nothing,
      _ddDNSIPAddrs = Nothing,
      _ddRadiusSettings = Nothing,
      _ddDesiredNumberOfDomainControllers = Nothing,
      _ddSize = Nothing,
      _ddStageLastUpdatedDateTime = Nothing,
      _ddSSOEnabled = Nothing
    }

-- | The status of the RADIUS MFA server connection.
ddRadiusStatus :: Lens' DirectoryDescription (Maybe RadiusStatus)
ddRadiusStatus = lens _ddRadiusStatus (\s a -> s {_ddRadiusStatus = a})

-- | The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as @d-XXXXXXXXXX@ .
ddAlias :: Lens' DirectoryDescription (Maybe Text)
ddAlias = lens _ddAlias (\s a -> s {_ddAlias = a})

-- | A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.
ddShareNotes :: Lens' DirectoryDescription (Maybe Text)
ddShareNotes = lens _ddShareNotes (\s a -> s {_ddShareNotes = a}) . mapping _Sensitive

-- | A 'DirectoryConnectSettingsDescription' object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.
ddConnectSettings :: Lens' DirectoryDescription (Maybe DirectoryConnectSettingsDescription)
ddConnectSettings = lens _ddConnectSettings (\s a -> s {_ddConnectSettings = a})

-- | A 'DirectoryVpcSettingsDescription' object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.
ddVPCSettings :: Lens' DirectoryDescription (Maybe DirectoryVPCSettingsDescription)
ddVPCSettings = lens _ddVPCSettings (\s a -> s {_ddVPCSettings = a})

-- | Additional information about the directory stage.
ddStageReason :: Lens' DirectoryDescription (Maybe Text)
ddStageReason = lens _ddStageReason (\s a -> s {_ddStageReason = a})

-- | Specifies when the directory was created.
ddLaunchTime :: Lens' DirectoryDescription (Maybe UTCTime)
ddLaunchTime = lens _ddLaunchTime (\s a -> s {_ddLaunchTime = a}) . mapping _Time

-- | Lists the Regions where the directory has replicated.
ddRegionsInfo :: Lens' DirectoryDescription (Maybe RegionsInfo)
ddRegionsInfo = lens _ddRegionsInfo (\s a -> s {_ddRegionsInfo = a})

-- | The short name of the directory.
ddShortName :: Lens' DirectoryDescription (Maybe Text)
ddShortName = lens _ddShortName (\s a -> s {_ddShortName = a})

-- | The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (@ORGANIZATIONS@ ) or with any AWS account by sending a shared directory request (@HANDSHAKE@ ).
ddShareMethod :: Lens' DirectoryDescription (Maybe ShareMethod)
ddShareMethod = lens _ddShareMethod (\s a -> s {_ddShareMethod = a})

-- | The access URL for the directory, such as @http://<alias>.awsapps.com@ . If no alias has been created for the directory, @<alias>@ is the directory identifier, such as @d-XXXXXXXXXX@ .
ddAccessURL :: Lens' DirectoryDescription (Maybe Text)
ddAccessURL = lens _ddAccessURL (\s a -> s {_ddAccessURL = a})

-- | The fully qualified name of the directory.
ddName :: Lens' DirectoryDescription (Maybe Text)
ddName = lens _ddName (\s a -> s {_ddName = a})

-- | The current stage of the directory.
ddStage :: Lens' DirectoryDescription (Maybe DirectoryStage)
ddStage = lens _ddStage (\s a -> s {_ddStage = a})

-- | The edition associated with this directory.
ddEdition :: Lens' DirectoryDescription (Maybe DirectoryEdition)
ddEdition = lens _ddEdition (\s a -> s {_ddEdition = a})

-- | The directory identifier.
ddDirectoryId :: Lens' DirectoryDescription (Maybe Text)
ddDirectoryId = lens _ddDirectoryId (\s a -> s {_ddDirectoryId = a})

-- | Current directory status of the shared AWS Managed Microsoft AD directory.
ddShareStatus :: Lens' DirectoryDescription (Maybe ShareStatus)
ddShareStatus = lens _ddShareStatus (\s a -> s {_ddShareStatus = a})

-- | Describes the AWS Managed Microsoft AD directory in the directory owner account.
ddOwnerDirectoryDescription :: Lens' DirectoryDescription (Maybe OwnerDirectoryDescription)
ddOwnerDirectoryDescription = lens _ddOwnerDirectoryDescription (\s a -> s {_ddOwnerDirectoryDescription = a})

-- | The description for the directory.
ddDescription :: Lens' DirectoryDescription (Maybe Text)
ddDescription = lens _ddDescription (\s a -> s {_ddDescription = a})

-- | The directory size.
ddType :: Lens' DirectoryDescription (Maybe DirectoryType)
ddType = lens _ddType (\s a -> s {_ddType = a})

-- | The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.
ddDNSIPAddrs :: Lens' DirectoryDescription [Text]
ddDNSIPAddrs = lens _ddDNSIPAddrs (\s a -> s {_ddDNSIPAddrs = a}) . _Default . _Coerce

-- | A 'RadiusSettings' object that contains information about the RADIUS server configured for this directory.
ddRadiusSettings :: Lens' DirectoryDescription (Maybe RadiusSettings)
ddRadiusSettings = lens _ddRadiusSettings (\s a -> s {_ddRadiusSettings = a})

-- | The desired number of domain controllers in the directory if the directory is Microsoft AD.
ddDesiredNumberOfDomainControllers :: Lens' DirectoryDescription (Maybe Natural)
ddDesiredNumberOfDomainControllers = lens _ddDesiredNumberOfDomainControllers (\s a -> s {_ddDesiredNumberOfDomainControllers = a}) . mapping _Nat

-- | The directory size.
ddSize :: Lens' DirectoryDescription (Maybe DirectorySize)
ddSize = lens _ddSize (\s a -> s {_ddSize = a})

-- | The date and time that the stage was last updated.
ddStageLastUpdatedDateTime :: Lens' DirectoryDescription (Maybe UTCTime)
ddStageLastUpdatedDateTime = lens _ddStageLastUpdatedDateTime (\s a -> s {_ddStageLastUpdatedDateTime = a}) . mapping _Time

-- | Indicates if single sign-on is enabled for the directory. For more information, see 'EnableSso' and 'DisableSso' .
ddSSOEnabled :: Lens' DirectoryDescription (Maybe Bool)
ddSSOEnabled = lens _ddSSOEnabled (\s a -> s {_ddSSOEnabled = a})

instance FromJSON DirectoryDescription where
  parseJSON =
    withObject
      "DirectoryDescription"
      ( \x ->
          DirectoryDescription'
            <$> (x .:? "RadiusStatus")
            <*> (x .:? "Alias")
            <*> (x .:? "ShareNotes")
            <*> (x .:? "ConnectSettings")
            <*> (x .:? "VpcSettings")
            <*> (x .:? "StageReason")
            <*> (x .:? "LaunchTime")
            <*> (x .:? "RegionsInfo")
            <*> (x .:? "ShortName")
            <*> (x .:? "ShareMethod")
            <*> (x .:? "AccessUrl")
            <*> (x .:? "Name")
            <*> (x .:? "Stage")
            <*> (x .:? "Edition")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "ShareStatus")
            <*> (x .:? "OwnerDirectoryDescription")
            <*> (x .:? "Description")
            <*> (x .:? "Type")
            <*> (x .:? "DnsIpAddrs" .!= mempty)
            <*> (x .:? "RadiusSettings")
            <*> (x .:? "DesiredNumberOfDomainControllers")
            <*> (x .:? "Size")
            <*> (x .:? "StageLastUpdatedDateTime")
            <*> (x .:? "SsoEnabled")
      )

instance Hashable DirectoryDescription

instance NFData DirectoryDescription
