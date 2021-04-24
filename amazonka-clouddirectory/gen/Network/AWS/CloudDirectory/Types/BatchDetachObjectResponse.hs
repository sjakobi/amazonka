{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'DetachObject' response operation.
--
--
--
-- /See:/ 'batchDetachObjectResponse' smart constructor.
newtype BatchDetachObjectResponse = BatchDetachObjectResponse'
  { _bdorDetachedObjectIdentifier ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetachObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdorDetachedObjectIdentifier' - The @ObjectIdentifier@ of the detached object.
batchDetachObjectResponse ::
  BatchDetachObjectResponse
batchDetachObjectResponse =
  BatchDetachObjectResponse'
    { _bdorDetachedObjectIdentifier =
        Nothing
    }

-- | The @ObjectIdentifier@ of the detached object.
bdorDetachedObjectIdentifier :: Lens' BatchDetachObjectResponse (Maybe Text)
bdorDetachedObjectIdentifier = lens _bdorDetachedObjectIdentifier (\s a -> s {_bdorDetachedObjectIdentifier = a})

instance FromJSON BatchDetachObjectResponse where
  parseJSON =
    withObject
      "BatchDetachObjectResponse"
      ( \x ->
          BatchDetachObjectResponse'
            <$> (x .:? "detachedObjectIdentifier")
      )

instance Hashable BatchDetachObjectResponse

instance NFData BatchDetachObjectResponse
