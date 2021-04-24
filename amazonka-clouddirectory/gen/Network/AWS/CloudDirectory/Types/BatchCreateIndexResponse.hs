{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'CreateIndex' response operation.
--
--
--
-- /See:/ 'batchCreateIndexResponse' smart constructor.
newtype BatchCreateIndexResponse = BatchCreateIndexResponse'
  { _bcirObjectIdentifier ::
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

-- | Creates a value of 'BatchCreateIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcirObjectIdentifier' - The @ObjectIdentifier@ of the index created by this operation.
batchCreateIndexResponse ::
  BatchCreateIndexResponse
batchCreateIndexResponse =
  BatchCreateIndexResponse'
    { _bcirObjectIdentifier =
        Nothing
    }

-- | The @ObjectIdentifier@ of the index created by this operation.
bcirObjectIdentifier :: Lens' BatchCreateIndexResponse (Maybe Text)
bcirObjectIdentifier = lens _bcirObjectIdentifier (\s a -> s {_bcirObjectIdentifier = a})

instance FromJSON BatchCreateIndexResponse where
  parseJSON =
    withObject
      "BatchCreateIndexResponse"
      ( \x ->
          BatchCreateIndexResponse'
            <$> (x .:? "ObjectIdentifier")
      )

instance Hashable BatchCreateIndexResponse

instance NFData BatchCreateIndexResponse
