{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationException
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationException where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
--
--
--
-- /See:/ 'remediationException' smart constructor.
data RemediationException = RemediationException'
  { _reExpirationTime ::
      !(Maybe POSIX),
    _reMessage :: !(Maybe Text),
    _reConfigRuleName :: !Text,
    _reResourceType :: !Text,
    _reResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemediationException' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reExpirationTime' - The time when the remediation exception will be deleted.
--
-- * 'reMessage' - An explanation of an remediation exception.
--
-- * 'reConfigRuleName' - The name of the AWS Config rule.
--
-- * 'reResourceType' - The type of a resource.
--
-- * 'reResourceId' - The ID of the resource (for example., sg-xxxxxx).
remediationException ::
  -- | 'reConfigRuleName'
  Text ->
  -- | 'reResourceType'
  Text ->
  -- | 'reResourceId'
  Text ->
  RemediationException
remediationException
  pConfigRuleName_
  pResourceType_
  pResourceId_ =
    RemediationException'
      { _reExpirationTime = Nothing,
        _reMessage = Nothing,
        _reConfigRuleName = pConfigRuleName_,
        _reResourceType = pResourceType_,
        _reResourceId = pResourceId_
      }

-- | The time when the remediation exception will be deleted.
reExpirationTime :: Lens' RemediationException (Maybe UTCTime)
reExpirationTime = lens _reExpirationTime (\s a -> s {_reExpirationTime = a}) . mapping _Time

-- | An explanation of an remediation exception.
reMessage :: Lens' RemediationException (Maybe Text)
reMessage = lens _reMessage (\s a -> s {_reMessage = a})

-- | The name of the AWS Config rule.
reConfigRuleName :: Lens' RemediationException Text
reConfigRuleName = lens _reConfigRuleName (\s a -> s {_reConfigRuleName = a})

-- | The type of a resource.
reResourceType :: Lens' RemediationException Text
reResourceType = lens _reResourceType (\s a -> s {_reResourceType = a})

-- | The ID of the resource (for example., sg-xxxxxx).
reResourceId :: Lens' RemediationException Text
reResourceId = lens _reResourceId (\s a -> s {_reResourceId = a})

instance FromJSON RemediationException where
  parseJSON =
    withObject
      "RemediationException"
      ( \x ->
          RemediationException'
            <$> (x .:? "ExpirationTime")
            <*> (x .:? "Message")
            <*> (x .: "ConfigRuleName")
            <*> (x .: "ResourceType")
            <*> (x .: "ResourceId")
      )

instance Hashable RemediationException

instance NFData RemediationException
