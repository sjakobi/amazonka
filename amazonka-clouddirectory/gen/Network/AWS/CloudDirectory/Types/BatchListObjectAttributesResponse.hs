{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse where

import Network.AWS.CloudDirectory.Types.AttributeKeyAndValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListObjectAttributes' response operation.
--
--
--
-- /See:/ 'batchListObjectAttributesResponse' smart constructor.
data BatchListObjectAttributesResponse = BatchListObjectAttributesResponse'
  { _bloarNextToken ::
      !( Maybe
           Text
       ),
    _bloarAttributes ::
      !( Maybe
           [AttributeKeyAndValue]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchListObjectAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bloarNextToken' - The pagination token.
--
-- * 'bloarAttributes' - The attributes map that is associated with the object. @AttributeArn@ is the key; attribute value is the value.
batchListObjectAttributesResponse ::
  BatchListObjectAttributesResponse
batchListObjectAttributesResponse =
  BatchListObjectAttributesResponse'
    { _bloarNextToken =
        Nothing,
      _bloarAttributes = Nothing
    }

-- | The pagination token.
bloarNextToken :: Lens' BatchListObjectAttributesResponse (Maybe Text)
bloarNextToken = lens _bloarNextToken (\s a -> s {_bloarNextToken = a})

-- | The attributes map that is associated with the object. @AttributeArn@ is the key; attribute value is the value.
bloarAttributes :: Lens' BatchListObjectAttributesResponse [AttributeKeyAndValue]
bloarAttributes = lens _bloarAttributes (\s a -> s {_bloarAttributes = a}) . _Default . _Coerce

instance FromJSON BatchListObjectAttributesResponse where
  parseJSON =
    withObject
      "BatchListObjectAttributesResponse"
      ( \x ->
          BatchListObjectAttributesResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "Attributes" .!= mempty)
      )

instance Hashable BatchListObjectAttributesResponse

instance NFData BatchListObjectAttributesResponse
