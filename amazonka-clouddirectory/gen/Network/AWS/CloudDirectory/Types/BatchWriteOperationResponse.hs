{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchWriteOperationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchWriteOperationResponse where

import Network.AWS.CloudDirectory.Types.BatchAddFacetToObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchAttachToIndexResponse
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse
import Network.AWS.CloudDirectory.Types.BatchCreateObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDeleteObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse
import Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributesResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a @BatchWrite@ response operation.
--
--
--
-- /See:/ 'batchWriteOperationResponse' smart constructor.
data BatchWriteOperationResponse = BatchWriteOperationResponse'
  { _bworAttachTypedLink ::
      !( Maybe
           BatchAttachTypedLinkResponse
       ),
    _bworDeleteObject ::
      !( Maybe
           BatchDeleteObjectResponse
       ),
    _bworCreateObject ::
      !( Maybe
           BatchCreateObjectResponse
       ),
    _bworUpdateLinkAttributes ::
      !( Maybe
           BatchUpdateLinkAttributesResponse
       ),
    _bworDetachTypedLink ::
      !( Maybe
           BatchDetachTypedLinkResponse
       ),
    _bworCreateIndex ::
      !( Maybe
           BatchCreateIndexResponse
       ),
    _bworDetachPolicy ::
      !( Maybe
           BatchDetachPolicyResponse
       ),
    _bworDetachFromIndex ::
      !( Maybe
           BatchDetachFromIndexResponse
       ),
    _bworAttachObject ::
      !( Maybe
           BatchAttachObjectResponse
       ),
    _bworAttachToIndex ::
      !( Maybe
           BatchAttachToIndexResponse
       ),
    _bworUpdateObjectAttributes ::
      !( Maybe
           BatchUpdateObjectAttributesResponse
       ),
    _bworAttachPolicy ::
      !( Maybe
           BatchAttachPolicyResponse
       ),
    _bworRemoveFacetFromObject ::
      !( Maybe
           BatchRemoveFacetFromObjectResponse
       ),
    _bworAddFacetToObject ::
      !( Maybe
           BatchAddFacetToObjectResponse
       ),
    _bworDetachObject ::
      !( Maybe
           BatchDetachObjectResponse
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

-- | Creates a value of 'BatchWriteOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bworAttachTypedLink' - Attaches a typed link to a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- * 'bworDeleteObject' - Deletes an object in a 'Directory' .
--
-- * 'bworCreateObject' - Creates an object in a 'Directory' .
--
-- * 'bworUpdateLinkAttributes' - Represents the output of a @BatchWrite@ response operation.
--
-- * 'bworDetachTypedLink' - Detaches a typed link from a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- * 'bworCreateIndex' - Creates an index object. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm Indexing and search> for more information.
--
-- * 'bworDetachPolicy' - Detaches a policy from a 'Directory' .
--
-- * 'bworDetachFromIndex' - Detaches the specified object from the specified index.
--
-- * 'bworAttachObject' - Attaches an object to a 'Directory' .
--
-- * 'bworAttachToIndex' - Attaches the specified object to the specified index.
--
-- * 'bworUpdateObjectAttributes' - Updates a given object’s attributes.
--
-- * 'bworAttachPolicy' - Attaches a policy object to a regular object. An object can have a limited number of attached policies.
--
-- * 'bworRemoveFacetFromObject' - The result of a batch remove facet from object operation.
--
-- * 'bworAddFacetToObject' - The result of an add facet to object batch operation.
--
-- * 'bworDetachObject' - Detaches an object from a 'Directory' .
batchWriteOperationResponse ::
  BatchWriteOperationResponse
batchWriteOperationResponse =
  BatchWriteOperationResponse'
    { _bworAttachTypedLink =
        Nothing,
      _bworDeleteObject = Nothing,
      _bworCreateObject = Nothing,
      _bworUpdateLinkAttributes = Nothing,
      _bworDetachTypedLink = Nothing,
      _bworCreateIndex = Nothing,
      _bworDetachPolicy = Nothing,
      _bworDetachFromIndex = Nothing,
      _bworAttachObject = Nothing,
      _bworAttachToIndex = Nothing,
      _bworUpdateObjectAttributes = Nothing,
      _bworAttachPolicy = Nothing,
      _bworRemoveFacetFromObject = Nothing,
      _bworAddFacetToObject = Nothing,
      _bworDetachObject = Nothing
    }

-- | Attaches a typed link to a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
bworAttachTypedLink :: Lens' BatchWriteOperationResponse (Maybe BatchAttachTypedLinkResponse)
bworAttachTypedLink = lens _bworAttachTypedLink (\s a -> s {_bworAttachTypedLink = a})

-- | Deletes an object in a 'Directory' .
bworDeleteObject :: Lens' BatchWriteOperationResponse (Maybe BatchDeleteObjectResponse)
bworDeleteObject = lens _bworDeleteObject (\s a -> s {_bworDeleteObject = a})

-- | Creates an object in a 'Directory' .
bworCreateObject :: Lens' BatchWriteOperationResponse (Maybe BatchCreateObjectResponse)
bworCreateObject = lens _bworCreateObject (\s a -> s {_bworCreateObject = a})

-- | Represents the output of a @BatchWrite@ response operation.
bworUpdateLinkAttributes :: Lens' BatchWriteOperationResponse (Maybe BatchUpdateLinkAttributesResponse)
bworUpdateLinkAttributes = lens _bworUpdateLinkAttributes (\s a -> s {_bworUpdateLinkAttributes = a})

-- | Detaches a typed link from a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
bworDetachTypedLink :: Lens' BatchWriteOperationResponse (Maybe BatchDetachTypedLinkResponse)
bworDetachTypedLink = lens _bworDetachTypedLink (\s a -> s {_bworDetachTypedLink = a})

-- | Creates an index object. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm Indexing and search> for more information.
bworCreateIndex :: Lens' BatchWriteOperationResponse (Maybe BatchCreateIndexResponse)
bworCreateIndex = lens _bworCreateIndex (\s a -> s {_bworCreateIndex = a})

-- | Detaches a policy from a 'Directory' .
bworDetachPolicy :: Lens' BatchWriteOperationResponse (Maybe BatchDetachPolicyResponse)
bworDetachPolicy = lens _bworDetachPolicy (\s a -> s {_bworDetachPolicy = a})

-- | Detaches the specified object from the specified index.
bworDetachFromIndex :: Lens' BatchWriteOperationResponse (Maybe BatchDetachFromIndexResponse)
bworDetachFromIndex = lens _bworDetachFromIndex (\s a -> s {_bworDetachFromIndex = a})

-- | Attaches an object to a 'Directory' .
bworAttachObject :: Lens' BatchWriteOperationResponse (Maybe BatchAttachObjectResponse)
bworAttachObject = lens _bworAttachObject (\s a -> s {_bworAttachObject = a})

-- | Attaches the specified object to the specified index.
bworAttachToIndex :: Lens' BatchWriteOperationResponse (Maybe BatchAttachToIndexResponse)
bworAttachToIndex = lens _bworAttachToIndex (\s a -> s {_bworAttachToIndex = a})

-- | Updates a given object’s attributes.
bworUpdateObjectAttributes :: Lens' BatchWriteOperationResponse (Maybe BatchUpdateObjectAttributesResponse)
bworUpdateObjectAttributes = lens _bworUpdateObjectAttributes (\s a -> s {_bworUpdateObjectAttributes = a})

-- | Attaches a policy object to a regular object. An object can have a limited number of attached policies.
bworAttachPolicy :: Lens' BatchWriteOperationResponse (Maybe BatchAttachPolicyResponse)
bworAttachPolicy = lens _bworAttachPolicy (\s a -> s {_bworAttachPolicy = a})

-- | The result of a batch remove facet from object operation.
bworRemoveFacetFromObject :: Lens' BatchWriteOperationResponse (Maybe BatchRemoveFacetFromObjectResponse)
bworRemoveFacetFromObject = lens _bworRemoveFacetFromObject (\s a -> s {_bworRemoveFacetFromObject = a})

-- | The result of an add facet to object batch operation.
bworAddFacetToObject :: Lens' BatchWriteOperationResponse (Maybe BatchAddFacetToObjectResponse)
bworAddFacetToObject = lens _bworAddFacetToObject (\s a -> s {_bworAddFacetToObject = a})

-- | Detaches an object from a 'Directory' .
bworDetachObject :: Lens' BatchWriteOperationResponse (Maybe BatchDetachObjectResponse)
bworDetachObject = lens _bworDetachObject (\s a -> s {_bworDetachObject = a})

instance FromJSON BatchWriteOperationResponse where
  parseJSON =
    withObject
      "BatchWriteOperationResponse"
      ( \x ->
          BatchWriteOperationResponse'
            <$> (x .:? "AttachTypedLink")
            <*> (x .:? "DeleteObject")
            <*> (x .:? "CreateObject")
            <*> (x .:? "UpdateLinkAttributes")
            <*> (x .:? "DetachTypedLink")
            <*> (x .:? "CreateIndex")
            <*> (x .:? "DetachPolicy")
            <*> (x .:? "DetachFromIndex")
            <*> (x .:? "AttachObject")
            <*> (x .:? "AttachToIndex")
            <*> (x .:? "UpdateObjectAttributes")
            <*> (x .:? "AttachPolicy")
            <*> (x .:? "RemoveFacetFromObject")
            <*> (x .:? "AddFacetToObject")
            <*> (x .:? "DetachObject")
      )

instance Hashable BatchWriteOperationResponse

instance NFData BatchWriteOperationResponse
