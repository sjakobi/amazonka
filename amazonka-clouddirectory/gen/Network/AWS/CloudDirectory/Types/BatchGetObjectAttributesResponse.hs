{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse where

import Network.AWS.CloudDirectory.Types.AttributeKeyAndValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'GetObjectAttributes' response operation.
--
--
--
-- /See:/ 'batchGetObjectAttributesResponse' smart constructor.
newtype BatchGetObjectAttributesResponse = BatchGetObjectAttributesResponse'
  { _bgoarAttributes ::
      Maybe
        [AttributeKeyAndValue]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetObjectAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgoarAttributes' - The attribute values that are associated with an object.
batchGetObjectAttributesResponse ::
  BatchGetObjectAttributesResponse
batchGetObjectAttributesResponse =
  BatchGetObjectAttributesResponse'
    { _bgoarAttributes =
        Nothing
    }

-- | The attribute values that are associated with an object.
bgoarAttributes :: Lens' BatchGetObjectAttributesResponse [AttributeKeyAndValue]
bgoarAttributes = lens _bgoarAttributes (\s a -> s {_bgoarAttributes = a}) . _Default . _Coerce

instance FromJSON BatchGetObjectAttributesResponse where
  parseJSON =
    withObject
      "BatchGetObjectAttributesResponse"
      ( \x ->
          BatchGetObjectAttributesResponse'
            <$> (x .:? "Attributes" .!= mempty)
      )

instance Hashable BatchGetObjectAttributesResponse

instance NFData BatchGetObjectAttributesResponse
