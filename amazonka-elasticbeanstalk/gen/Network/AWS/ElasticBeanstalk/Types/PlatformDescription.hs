{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.PlatformDescription where

import Network.AWS.ElasticBeanstalk.Types.CustomAMI
import Network.AWS.ElasticBeanstalk.Types.PlatformFramework
import Network.AWS.ElasticBeanstalk.Types.PlatformProgrammingLanguage
import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Detailed information about a platform version.
--
--
--
-- /See:/ 'platformDescription' smart constructor.
data PlatformDescription = PlatformDescription'
  { _pdPlatformCategory ::
      !(Maybe Text),
    _pdOperatingSystemName ::
      !(Maybe Text),
    _pdPlatformBranchName ::
      !(Maybe Text),
    _pdSupportedAddonList ::
      !(Maybe [Text]),
    _pdDateCreated ::
      !(Maybe ISO8601),
    _pdCustomAMIList ::
      !(Maybe [CustomAMI]),
    _pdPlatformOwner ::
      !(Maybe Text),
    _pdPlatformStatus ::
      !(Maybe PlatformStatus),
    _pdSolutionStackName ::
      !(Maybe Text),
    _pdPlatformVersion ::
      !(Maybe Text),
    _pdPlatformBranchLifecycleState ::
      !(Maybe Text),
    _pdPlatformARN :: !(Maybe Text),
    _pdFrameworks ::
      !(Maybe [PlatformFramework]),
    _pdDateUpdated ::
      !(Maybe ISO8601),
    _pdSupportedTierList ::
      !(Maybe [Text]),
    _pdPlatformLifecycleState ::
      !(Maybe Text),
    _pdMaintainer :: !(Maybe Text),
    _pdDescription :: !(Maybe Text),
    _pdPlatformName ::
      !(Maybe Text),
    _pdProgrammingLanguages ::
      !( Maybe
           [PlatformProgrammingLanguage]
       ),
    _pdOperatingSystemVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdPlatformCategory' - The category of the platform version.
--
-- * 'pdOperatingSystemName' - The operating system used by the platform version.
--
-- * 'pdPlatformBranchName' - The platform branch to which the platform version belongs.
--
-- * 'pdSupportedAddonList' - The additions supported by the platform version.
--
-- * 'pdDateCreated' - The date when the platform version was created.
--
-- * 'pdCustomAMIList' - The custom AMIs supported by the platform version.
--
-- * 'pdPlatformOwner' - The AWS account ID of the person who created the platform version.
--
-- * 'pdPlatformStatus' - The status of the platform version.
--
-- * 'pdSolutionStackName' - The name of the solution stack used by the platform version.
--
-- * 'pdPlatformVersion' - The version of the platform version.
--
-- * 'pdPlatformBranchLifecycleState' - The state of the platform version's branch in its lifecycle. Possible values: @Beta@ | @Supported@ | @Deprecated@ | @Retired@
--
-- * 'pdPlatformARN' - The ARN of the platform version.
--
-- * 'pdFrameworks' - The frameworks supported by the platform version.
--
-- * 'pdDateUpdated' - The date when the platform version was last updated.
--
-- * 'pdSupportedTierList' - The tiers supported by the platform version.
--
-- * 'pdPlatformLifecycleState' - The state of the platform version in its lifecycle. Possible values: @Recommended@ | @null@  If a null value is returned, the platform version isn't the recommended one for its branch. Each platform branch has a single recommended platform version, typically the most recent one.
--
-- * 'pdMaintainer' - Information about the maintainer of the platform version.
--
-- * 'pdDescription' - The description of the platform version.
--
-- * 'pdPlatformName' - The name of the platform version.
--
-- * 'pdProgrammingLanguages' - The programming languages supported by the platform version.
--
-- * 'pdOperatingSystemVersion' - The version of the operating system used by the platform version.
platformDescription ::
  PlatformDescription
platformDescription =
  PlatformDescription'
    { _pdPlatformCategory = Nothing,
      _pdOperatingSystemName = Nothing,
      _pdPlatformBranchName = Nothing,
      _pdSupportedAddonList = Nothing,
      _pdDateCreated = Nothing,
      _pdCustomAMIList = Nothing,
      _pdPlatformOwner = Nothing,
      _pdPlatformStatus = Nothing,
      _pdSolutionStackName = Nothing,
      _pdPlatformVersion = Nothing,
      _pdPlatformBranchLifecycleState = Nothing,
      _pdPlatformARN = Nothing,
      _pdFrameworks = Nothing,
      _pdDateUpdated = Nothing,
      _pdSupportedTierList = Nothing,
      _pdPlatformLifecycleState = Nothing,
      _pdMaintainer = Nothing,
      _pdDescription = Nothing,
      _pdPlatformName = Nothing,
      _pdProgrammingLanguages = Nothing,
      _pdOperatingSystemVersion = Nothing
    }

-- | The category of the platform version.
pdPlatformCategory :: Lens' PlatformDescription (Maybe Text)
pdPlatformCategory = lens _pdPlatformCategory (\s a -> s {_pdPlatformCategory = a})

-- | The operating system used by the platform version.
pdOperatingSystemName :: Lens' PlatformDescription (Maybe Text)
pdOperatingSystemName = lens _pdOperatingSystemName (\s a -> s {_pdOperatingSystemName = a})

-- | The platform branch to which the platform version belongs.
pdPlatformBranchName :: Lens' PlatformDescription (Maybe Text)
pdPlatformBranchName = lens _pdPlatformBranchName (\s a -> s {_pdPlatformBranchName = a})

-- | The additions supported by the platform version.
pdSupportedAddonList :: Lens' PlatformDescription [Text]
pdSupportedAddonList = lens _pdSupportedAddonList (\s a -> s {_pdSupportedAddonList = a}) . _Default . _Coerce

-- | The date when the platform version was created.
pdDateCreated :: Lens' PlatformDescription (Maybe UTCTime)
pdDateCreated = lens _pdDateCreated (\s a -> s {_pdDateCreated = a}) . mapping _Time

-- | The custom AMIs supported by the platform version.
pdCustomAMIList :: Lens' PlatformDescription [CustomAMI]
pdCustomAMIList = lens _pdCustomAMIList (\s a -> s {_pdCustomAMIList = a}) . _Default . _Coerce

-- | The AWS account ID of the person who created the platform version.
pdPlatformOwner :: Lens' PlatformDescription (Maybe Text)
pdPlatformOwner = lens _pdPlatformOwner (\s a -> s {_pdPlatformOwner = a})

-- | The status of the platform version.
pdPlatformStatus :: Lens' PlatformDescription (Maybe PlatformStatus)
pdPlatformStatus = lens _pdPlatformStatus (\s a -> s {_pdPlatformStatus = a})

-- | The name of the solution stack used by the platform version.
pdSolutionStackName :: Lens' PlatformDescription (Maybe Text)
pdSolutionStackName = lens _pdSolutionStackName (\s a -> s {_pdSolutionStackName = a})

-- | The version of the platform version.
pdPlatformVersion :: Lens' PlatformDescription (Maybe Text)
pdPlatformVersion = lens _pdPlatformVersion (\s a -> s {_pdPlatformVersion = a})

-- | The state of the platform version's branch in its lifecycle. Possible values: @Beta@ | @Supported@ | @Deprecated@ | @Retired@
pdPlatformBranchLifecycleState :: Lens' PlatformDescription (Maybe Text)
pdPlatformBranchLifecycleState = lens _pdPlatformBranchLifecycleState (\s a -> s {_pdPlatformBranchLifecycleState = a})

-- | The ARN of the platform version.
pdPlatformARN :: Lens' PlatformDescription (Maybe Text)
pdPlatformARN = lens _pdPlatformARN (\s a -> s {_pdPlatformARN = a})

-- | The frameworks supported by the platform version.
pdFrameworks :: Lens' PlatformDescription [PlatformFramework]
pdFrameworks = lens _pdFrameworks (\s a -> s {_pdFrameworks = a}) . _Default . _Coerce

-- | The date when the platform version was last updated.
pdDateUpdated :: Lens' PlatformDescription (Maybe UTCTime)
pdDateUpdated = lens _pdDateUpdated (\s a -> s {_pdDateUpdated = a}) . mapping _Time

-- | The tiers supported by the platform version.
pdSupportedTierList :: Lens' PlatformDescription [Text]
pdSupportedTierList = lens _pdSupportedTierList (\s a -> s {_pdSupportedTierList = a}) . _Default . _Coerce

-- | The state of the platform version in its lifecycle. Possible values: @Recommended@ | @null@  If a null value is returned, the platform version isn't the recommended one for its branch. Each platform branch has a single recommended platform version, typically the most recent one.
pdPlatformLifecycleState :: Lens' PlatformDescription (Maybe Text)
pdPlatformLifecycleState = lens _pdPlatformLifecycleState (\s a -> s {_pdPlatformLifecycleState = a})

-- | Information about the maintainer of the platform version.
pdMaintainer :: Lens' PlatformDescription (Maybe Text)
pdMaintainer = lens _pdMaintainer (\s a -> s {_pdMaintainer = a})

-- | The description of the platform version.
pdDescription :: Lens' PlatformDescription (Maybe Text)
pdDescription = lens _pdDescription (\s a -> s {_pdDescription = a})

-- | The name of the platform version.
pdPlatformName :: Lens' PlatformDescription (Maybe Text)
pdPlatformName = lens _pdPlatformName (\s a -> s {_pdPlatformName = a})

-- | The programming languages supported by the platform version.
pdProgrammingLanguages :: Lens' PlatformDescription [PlatformProgrammingLanguage]
pdProgrammingLanguages = lens _pdProgrammingLanguages (\s a -> s {_pdProgrammingLanguages = a}) . _Default . _Coerce

-- | The version of the operating system used by the platform version.
pdOperatingSystemVersion :: Lens' PlatformDescription (Maybe Text)
pdOperatingSystemVersion = lens _pdOperatingSystemVersion (\s a -> s {_pdOperatingSystemVersion = a})

instance FromXML PlatformDescription where
  parseXML x =
    PlatformDescription'
      <$> (x .@? "PlatformCategory")
      <*> (x .@? "OperatingSystemName")
      <*> (x .@? "PlatformBranchName")
      <*> ( x .@? "SupportedAddonList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "DateCreated")
      <*> ( x .@? "CustomAmiList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PlatformOwner")
      <*> (x .@? "PlatformStatus")
      <*> (x .@? "SolutionStackName")
      <*> (x .@? "PlatformVersion")
      <*> (x .@? "PlatformBranchLifecycleState")
      <*> (x .@? "PlatformArn")
      <*> ( x .@? "Frameworks" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "DateUpdated")
      <*> ( x .@? "SupportedTierList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PlatformLifecycleState")
      <*> (x .@? "Maintainer")
      <*> (x .@? "Description")
      <*> (x .@? "PlatformName")
      <*> ( x .@? "ProgrammingLanguages" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "OperatingSystemVersion")

instance Hashable PlatformDescription

instance NFData PlatformDescription
