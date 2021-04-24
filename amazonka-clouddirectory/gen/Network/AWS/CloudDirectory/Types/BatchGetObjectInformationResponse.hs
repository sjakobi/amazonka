{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse where

import Network.AWS.CloudDirectory.Types.SchemaFacet
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'GetObjectInformation' response operation.
--
--
--
-- /See:/ 'batchGetObjectInformationResponse' smart constructor.
data BatchGetObjectInformationResponse = BatchGetObjectInformationResponse'
  { _bgoirSchemaFacets ::
      !( Maybe
           [SchemaFacet]
       ),
    _bgoirObjectIdentifier ::
      !( Maybe
           Text
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

-- | Creates a value of 'BatchGetObjectInformationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgoirSchemaFacets' - The facets attached to the specified object.
--
-- * 'bgoirObjectIdentifier' - The @ObjectIdentifier@ of the specified object.
batchGetObjectInformationResponse ::
  BatchGetObjectInformationResponse
batchGetObjectInformationResponse =
  BatchGetObjectInformationResponse'
    { _bgoirSchemaFacets =
        Nothing,
      _bgoirObjectIdentifier = Nothing
    }

-- | The facets attached to the specified object.
bgoirSchemaFacets :: Lens' BatchGetObjectInformationResponse [SchemaFacet]
bgoirSchemaFacets = lens _bgoirSchemaFacets (\s a -> s {_bgoirSchemaFacets = a}) . _Default . _Coerce

-- | The @ObjectIdentifier@ of the specified object.
bgoirObjectIdentifier :: Lens' BatchGetObjectInformationResponse (Maybe Text)
bgoirObjectIdentifier = lens _bgoirObjectIdentifier (\s a -> s {_bgoirObjectIdentifier = a})

instance FromJSON BatchGetObjectInformationResponse where
  parseJSON =
    withObject
      "BatchGetObjectInformationResponse"
      ( \x ->
          BatchGetObjectInformationResponse'
            <$> (x .:? "SchemaFacets" .!= mempty)
            <*> (x .:? "ObjectIdentifier")
      )

instance Hashable BatchGetObjectInformationResponse

instance NFData BatchGetObjectInformationResponse
