{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.AliasListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.AliasListEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an alias.
--
--
--
-- /See:/ 'aliasListEntry' smart constructor.
data AliasListEntry = AliasListEntry'
  { _aleLastUpdatedDate ::
      !(Maybe POSIX),
    _aleCreationDate :: !(Maybe POSIX),
    _aleAliasName :: !(Maybe Text),
    _aleAliasARN :: !(Maybe Text),
    _aleTargetKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AliasListEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aleLastUpdatedDate' - Undocumented member.
--
-- * 'aleCreationDate' - Undocumented member.
--
-- * 'aleAliasName' - String that contains the alias. This value begins with @alias/@ .
--
-- * 'aleAliasARN' - String that contains the key ARN.
--
-- * 'aleTargetKeyId' - String that contains the key identifier referred to by the alias.
aliasListEntry ::
  AliasListEntry
aliasListEntry =
  AliasListEntry'
    { _aleLastUpdatedDate = Nothing,
      _aleCreationDate = Nothing,
      _aleAliasName = Nothing,
      _aleAliasARN = Nothing,
      _aleTargetKeyId = Nothing
    }

-- | Undocumented member.
aleLastUpdatedDate :: Lens' AliasListEntry (Maybe UTCTime)
aleLastUpdatedDate = lens _aleLastUpdatedDate (\s a -> s {_aleLastUpdatedDate = a}) . mapping _Time

-- | Undocumented member.
aleCreationDate :: Lens' AliasListEntry (Maybe UTCTime)
aleCreationDate = lens _aleCreationDate (\s a -> s {_aleCreationDate = a}) . mapping _Time

-- | String that contains the alias. This value begins with @alias/@ .
aleAliasName :: Lens' AliasListEntry (Maybe Text)
aleAliasName = lens _aleAliasName (\s a -> s {_aleAliasName = a})

-- | String that contains the key ARN.
aleAliasARN :: Lens' AliasListEntry (Maybe Text)
aleAliasARN = lens _aleAliasARN (\s a -> s {_aleAliasARN = a})

-- | String that contains the key identifier referred to by the alias.
aleTargetKeyId :: Lens' AliasListEntry (Maybe Text)
aleTargetKeyId = lens _aleTargetKeyId (\s a -> s {_aleTargetKeyId = a})

instance FromJSON AliasListEntry where
  parseJSON =
    withObject
      "AliasListEntry"
      ( \x ->
          AliasListEntry'
            <$> (x .:? "LastUpdatedDate")
            <*> (x .:? "CreationDate")
            <*> (x .:? "AliasName")
            <*> (x .:? "AliasArn")
            <*> (x .:? "TargetKeyId")
      )

instance Hashable AliasListEntry

instance NFData AliasListEntry
