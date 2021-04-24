{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Workteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Workteam where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MemberDefinition
import Network.AWS.SageMaker.Types.NotificationConfiguration

-- | Provides details about a labeling work team.
--
--
--
-- /See:/ 'workteam' smart constructor.
data Workteam = Workteam'
  { _wWorkforceARN ::
      !(Maybe Text),
    _wLastUpdatedDate :: !(Maybe POSIX),
    _wCreateDate :: !(Maybe POSIX),
    _wNotificationConfiguration ::
      !(Maybe NotificationConfiguration),
    _wProductListingIds :: !(Maybe [Text]),
    _wSubDomain :: !(Maybe Text),
    _wWorkteamName :: !Text,
    _wMemberDefinitions :: !(List1 MemberDefinition),
    _wWorkteamARN :: !Text,
    _wDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Workteam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wWorkforceARN' - The Amazon Resource Name (ARN) of the workforce.
--
-- * 'wLastUpdatedDate' - The date and time that the work team was last updated (timestamp).
--
-- * 'wCreateDate' - The date and time that the work team was created (timestamp).
--
-- * 'wNotificationConfiguration' - Configures SNS notifications of available or expiring work items for work teams.
--
-- * 'wProductListingIds' - The Amazon Marketplace identifier for a vendor's work team.
--
-- * 'wSubDomain' - The URI of the labeling job's user interface. Workers open this URI to start labeling your data objects.
--
-- * 'wWorkteamName' - The name of the work team.
--
-- * 'wMemberDefinitions' - A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ .
--
-- * 'wWorkteamARN' - The Amazon Resource Name (ARN) that identifies the work team.
--
-- * 'wDescription' - A description of the work team.
workteam ::
  -- | 'wWorkteamName'
  Text ->
  -- | 'wMemberDefinitions'
  NonEmpty MemberDefinition ->
  -- | 'wWorkteamARN'
  Text ->
  -- | 'wDescription'
  Text ->
  Workteam
workteam
  pWorkteamName_
  pMemberDefinitions_
  pWorkteamARN_
  pDescription_ =
    Workteam'
      { _wWorkforceARN = Nothing,
        _wLastUpdatedDate = Nothing,
        _wCreateDate = Nothing,
        _wNotificationConfiguration = Nothing,
        _wProductListingIds = Nothing,
        _wSubDomain = Nothing,
        _wWorkteamName = pWorkteamName_,
        _wMemberDefinitions = _List1 # pMemberDefinitions_,
        _wWorkteamARN = pWorkteamARN_,
        _wDescription = pDescription_
      }

-- | The Amazon Resource Name (ARN) of the workforce.
wWorkforceARN :: Lens' Workteam (Maybe Text)
wWorkforceARN = lens _wWorkforceARN (\s a -> s {_wWorkforceARN = a})

-- | The date and time that the work team was last updated (timestamp).
wLastUpdatedDate :: Lens' Workteam (Maybe UTCTime)
wLastUpdatedDate = lens _wLastUpdatedDate (\s a -> s {_wLastUpdatedDate = a}) . mapping _Time

-- | The date and time that the work team was created (timestamp).
wCreateDate :: Lens' Workteam (Maybe UTCTime)
wCreateDate = lens _wCreateDate (\s a -> s {_wCreateDate = a}) . mapping _Time

-- | Configures SNS notifications of available or expiring work items for work teams.
wNotificationConfiguration :: Lens' Workteam (Maybe NotificationConfiguration)
wNotificationConfiguration = lens _wNotificationConfiguration (\s a -> s {_wNotificationConfiguration = a})

-- | The Amazon Marketplace identifier for a vendor's work team.
wProductListingIds :: Lens' Workteam [Text]
wProductListingIds = lens _wProductListingIds (\s a -> s {_wProductListingIds = a}) . _Default . _Coerce

-- | The URI of the labeling job's user interface. Workers open this URI to start labeling your data objects.
wSubDomain :: Lens' Workteam (Maybe Text)
wSubDomain = lens _wSubDomain (\s a -> s {_wSubDomain = a})

-- | The name of the work team.
wWorkteamName :: Lens' Workteam Text
wWorkteamName = lens _wWorkteamName (\s a -> s {_wWorkteamName = a})

-- | A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ .
wMemberDefinitions :: Lens' Workteam (NonEmpty MemberDefinition)
wMemberDefinitions = lens _wMemberDefinitions (\s a -> s {_wMemberDefinitions = a}) . _List1

-- | The Amazon Resource Name (ARN) that identifies the work team.
wWorkteamARN :: Lens' Workteam Text
wWorkteamARN = lens _wWorkteamARN (\s a -> s {_wWorkteamARN = a})

-- | A description of the work team.
wDescription :: Lens' Workteam Text
wDescription = lens _wDescription (\s a -> s {_wDescription = a})

instance FromJSON Workteam where
  parseJSON =
    withObject
      "Workteam"
      ( \x ->
          Workteam'
            <$> (x .:? "WorkforceArn")
            <*> (x .:? "LastUpdatedDate")
            <*> (x .:? "CreateDate")
            <*> (x .:? "NotificationConfiguration")
            <*> (x .:? "ProductListingIds" .!= mempty)
            <*> (x .:? "SubDomain")
            <*> (x .: "WorkteamName")
            <*> (x .: "MemberDefinitions")
            <*> (x .: "WorkteamArn")
            <*> (x .: "Description")
      )

instance Hashable Workteam

instance NFData Workteam
