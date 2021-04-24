{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.IdentityDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.IdentityDescription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A description of the identity.
--
--
--
-- /See:/ 'identityDescription' smart constructor.
data IdentityDescription = IdentityDescription'
  { _idLastModifiedDate ::
      !(Maybe POSIX),
    _idCreationDate ::
      !(Maybe POSIX),
    _idIdentityId :: !(Maybe Text),
    _idLogins :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IdentityDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idLastModifiedDate' - Date on which the identity was last modified.
--
-- * 'idCreationDate' - Date on which the identity was created.
--
-- * 'idIdentityId' - A unique identifier in the format REGION:GUID.
--
-- * 'idLogins' - The provider names.
identityDescription ::
  IdentityDescription
identityDescription =
  IdentityDescription'
    { _idLastModifiedDate = Nothing,
      _idCreationDate = Nothing,
      _idIdentityId = Nothing,
      _idLogins = Nothing
    }

-- | Date on which the identity was last modified.
idLastModifiedDate :: Lens' IdentityDescription (Maybe UTCTime)
idLastModifiedDate = lens _idLastModifiedDate (\s a -> s {_idLastModifiedDate = a}) . mapping _Time

-- | Date on which the identity was created.
idCreationDate :: Lens' IdentityDescription (Maybe UTCTime)
idCreationDate = lens _idCreationDate (\s a -> s {_idCreationDate = a}) . mapping _Time

-- | A unique identifier in the format REGION:GUID.
idIdentityId :: Lens' IdentityDescription (Maybe Text)
idIdentityId = lens _idIdentityId (\s a -> s {_idIdentityId = a})

-- | The provider names.
idLogins :: Lens' IdentityDescription [Text]
idLogins = lens _idLogins (\s a -> s {_idLogins = a}) . _Default . _Coerce

instance FromJSON IdentityDescription where
  parseJSON =
    withObject
      "IdentityDescription"
      ( \x ->
          IdentityDescription'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "CreationDate")
            <*> (x .:? "IdentityId")
            <*> (x .:? "Logins" .!= mempty)
      )

instance Hashable IdentityDescription

instance NFData IdentityDescription
