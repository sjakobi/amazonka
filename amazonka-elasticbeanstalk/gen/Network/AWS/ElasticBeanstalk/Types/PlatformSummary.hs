{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.PlatformSummary where

import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about a platform version.
--
--
--
-- /See:/ 'platformSummary' smart constructor.
data PlatformSummary = PlatformSummary'
  { _psPlatformCategory ::
      !(Maybe Text),
    _psOperatingSystemName :: !(Maybe Text),
    _psPlatformBranchName :: !(Maybe Text),
    _psSupportedAddonList ::
      !(Maybe [Text]),
    _psPlatformOwner :: !(Maybe Text),
    _psPlatformStatus ::
      !(Maybe PlatformStatus),
    _psPlatformVersion :: !(Maybe Text),
    _psPlatformBranchLifecycleState ::
      !(Maybe Text),
    _psPlatformARN :: !(Maybe Text),
    _psSupportedTierList :: !(Maybe [Text]),
    _psPlatformLifecycleState ::
      !(Maybe Text),
    _psOperatingSystemVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psPlatformCategory' - The category of platform version.
--
-- * 'psOperatingSystemName' - The operating system used by the platform version.
--
-- * 'psPlatformBranchName' - The platform branch to which the platform version belongs.
--
-- * 'psSupportedAddonList' - The additions associated with the platform version.
--
-- * 'psPlatformOwner' - The AWS account ID of the person who created the platform version.
--
-- * 'psPlatformStatus' - The status of the platform version. You can create an environment from the platform version once it is ready.
--
-- * 'psPlatformVersion' - The version string of the platform version.
--
-- * 'psPlatformBranchLifecycleState' - The state of the platform version's branch in its lifecycle. Possible values: @beta@ | @supported@ | @deprecated@ | @retired@
--
-- * 'psPlatformARN' - The ARN of the platform version.
--
-- * 'psSupportedTierList' - The tiers in which the platform version runs.
--
-- * 'psPlatformLifecycleState' - The state of the platform version in its lifecycle. Possible values: @recommended@ | empty If an empty value is returned, the platform version is supported but isn't the recommended one for its branch.
--
-- * 'psOperatingSystemVersion' - The version of the operating system used by the platform version.
platformSummary ::
  PlatformSummary
platformSummary =
  PlatformSummary'
    { _psPlatformCategory = Nothing,
      _psOperatingSystemName = Nothing,
      _psPlatformBranchName = Nothing,
      _psSupportedAddonList = Nothing,
      _psPlatformOwner = Nothing,
      _psPlatformStatus = Nothing,
      _psPlatformVersion = Nothing,
      _psPlatformBranchLifecycleState = Nothing,
      _psPlatformARN = Nothing,
      _psSupportedTierList = Nothing,
      _psPlatformLifecycleState = Nothing,
      _psOperatingSystemVersion = Nothing
    }

-- | The category of platform version.
psPlatformCategory :: Lens' PlatformSummary (Maybe Text)
psPlatformCategory = lens _psPlatformCategory (\s a -> s {_psPlatformCategory = a})

-- | The operating system used by the platform version.
psOperatingSystemName :: Lens' PlatformSummary (Maybe Text)
psOperatingSystemName = lens _psOperatingSystemName (\s a -> s {_psOperatingSystemName = a})

-- | The platform branch to which the platform version belongs.
psPlatformBranchName :: Lens' PlatformSummary (Maybe Text)
psPlatformBranchName = lens _psPlatformBranchName (\s a -> s {_psPlatformBranchName = a})

-- | The additions associated with the platform version.
psSupportedAddonList :: Lens' PlatformSummary [Text]
psSupportedAddonList = lens _psSupportedAddonList (\s a -> s {_psSupportedAddonList = a}) . _Default . _Coerce

-- | The AWS account ID of the person who created the platform version.
psPlatformOwner :: Lens' PlatformSummary (Maybe Text)
psPlatformOwner = lens _psPlatformOwner (\s a -> s {_psPlatformOwner = a})

-- | The status of the platform version. You can create an environment from the platform version once it is ready.
psPlatformStatus :: Lens' PlatformSummary (Maybe PlatformStatus)
psPlatformStatus = lens _psPlatformStatus (\s a -> s {_psPlatformStatus = a})

-- | The version string of the platform version.
psPlatformVersion :: Lens' PlatformSummary (Maybe Text)
psPlatformVersion = lens _psPlatformVersion (\s a -> s {_psPlatformVersion = a})

-- | The state of the platform version's branch in its lifecycle. Possible values: @beta@ | @supported@ | @deprecated@ | @retired@
psPlatformBranchLifecycleState :: Lens' PlatformSummary (Maybe Text)
psPlatformBranchLifecycleState = lens _psPlatformBranchLifecycleState (\s a -> s {_psPlatformBranchLifecycleState = a})

-- | The ARN of the platform version.
psPlatformARN :: Lens' PlatformSummary (Maybe Text)
psPlatformARN = lens _psPlatformARN (\s a -> s {_psPlatformARN = a})

-- | The tiers in which the platform version runs.
psSupportedTierList :: Lens' PlatformSummary [Text]
psSupportedTierList = lens _psSupportedTierList (\s a -> s {_psSupportedTierList = a}) . _Default . _Coerce

-- | The state of the platform version in its lifecycle. Possible values: @recommended@ | empty If an empty value is returned, the platform version is supported but isn't the recommended one for its branch.
psPlatformLifecycleState :: Lens' PlatformSummary (Maybe Text)
psPlatformLifecycleState = lens _psPlatformLifecycleState (\s a -> s {_psPlatformLifecycleState = a})

-- | The version of the operating system used by the platform version.
psOperatingSystemVersion :: Lens' PlatformSummary (Maybe Text)
psOperatingSystemVersion = lens _psOperatingSystemVersion (\s a -> s {_psOperatingSystemVersion = a})

instance FromXML PlatformSummary where
  parseXML x =
    PlatformSummary'
      <$> (x .@? "PlatformCategory")
      <*> (x .@? "OperatingSystemName")
      <*> (x .@? "PlatformBranchName")
      <*> ( x .@? "SupportedAddonList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PlatformOwner")
      <*> (x .@? "PlatformStatus")
      <*> (x .@? "PlatformVersion")
      <*> (x .@? "PlatformBranchLifecycleState")
      <*> (x .@? "PlatformArn")
      <*> ( x .@? "SupportedTierList" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PlatformLifecycleState")
      <*> (x .@? "OperatingSystemVersion")

instance Hashable PlatformSummary

instance NFData PlatformSummary
