{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.UnprocessedIdentityId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.UnprocessedIdentityId where

import Network.AWS.CognitoIdentity.Types.CognitoErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.
--
--
--
-- /See:/ 'unprocessedIdentityId' smart constructor.
data UnprocessedIdentityId = UnprocessedIdentityId'
  { _uiiIdentityId ::
      !(Maybe Text),
    _uiiErrorCode ::
      !(Maybe CognitoErrorCode)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UnprocessedIdentityId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiiIdentityId' - A unique identifier in the format REGION:GUID.
--
-- * 'uiiErrorCode' - The error code indicating the type of error that occurred.
unprocessedIdentityId ::
  UnprocessedIdentityId
unprocessedIdentityId =
  UnprocessedIdentityId'
    { _uiiIdentityId = Nothing,
      _uiiErrorCode = Nothing
    }

-- | A unique identifier in the format REGION:GUID.
uiiIdentityId :: Lens' UnprocessedIdentityId (Maybe Text)
uiiIdentityId = lens _uiiIdentityId (\s a -> s {_uiiIdentityId = a})

-- | The error code indicating the type of error that occurred.
uiiErrorCode :: Lens' UnprocessedIdentityId (Maybe CognitoErrorCode)
uiiErrorCode = lens _uiiErrorCode (\s a -> s {_uiiErrorCode = a})

instance FromJSON UnprocessedIdentityId where
  parseJSON =
    withObject
      "UnprocessedIdentityId"
      ( \x ->
          UnprocessedIdentityId'
            <$> (x .:? "IdentityId") <*> (x .:? "ErrorCode")
      )

instance Hashable UnprocessedIdentityId

instance NFData UnprocessedIdentityId
