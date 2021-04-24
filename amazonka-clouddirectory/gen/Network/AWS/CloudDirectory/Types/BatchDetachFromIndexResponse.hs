{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'DetachFromIndex' response operation.
--
--
--
-- /See:/ 'batchDetachFromIndexResponse' smart constructor.
newtype BatchDetachFromIndexResponse = BatchDetachFromIndexResponse'
  { _bdfirDetachedObjectIdentifier ::
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

-- | Creates a value of 'BatchDetachFromIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdfirDetachedObjectIdentifier' - The @ObjectIdentifier@ of the object that was detached from the index.
batchDetachFromIndexResponse ::
  BatchDetachFromIndexResponse
batchDetachFromIndexResponse =
  BatchDetachFromIndexResponse'
    { _bdfirDetachedObjectIdentifier =
        Nothing
    }

-- | The @ObjectIdentifier@ of the object that was detached from the index.
bdfirDetachedObjectIdentifier :: Lens' BatchDetachFromIndexResponse (Maybe Text)
bdfirDetachedObjectIdentifier = lens _bdfirDetachedObjectIdentifier (\s a -> s {_bdfirDetachedObjectIdentifier = a})

instance FromJSON BatchDetachFromIndexResponse where
  parseJSON =
    withObject
      "BatchDetachFromIndexResponse"
      ( \x ->
          BatchDetachFromIndexResponse'
            <$> (x .:? "DetachedObjectIdentifier")
      )

instance Hashable BatchDetachFromIndexResponse

instance NFData BatchDetachFromIndexResponse
