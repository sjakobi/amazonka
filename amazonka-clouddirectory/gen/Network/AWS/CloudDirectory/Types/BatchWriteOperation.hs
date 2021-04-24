{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchWriteOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchWriteOperation where

import Network.AWS.CloudDirectory.Types.BatchAddFacetToObject
import Network.AWS.CloudDirectory.Types.BatchAttachObject
import Network.AWS.CloudDirectory.Types.BatchAttachPolicy
import Network.AWS.CloudDirectory.Types.BatchAttachToIndex
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLink
import Network.AWS.CloudDirectory.Types.BatchCreateIndex
import Network.AWS.CloudDirectory.Types.BatchCreateObject
import Network.AWS.CloudDirectory.Types.BatchDeleteObject
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndex
import Network.AWS.CloudDirectory.Types.BatchDetachObject
import Network.AWS.CloudDirectory.Types.BatchDetachPolicy
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLink
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObject
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributes
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a @BatchWrite@ operation.
--
--
--
-- /See:/ 'batchWriteOperation' smart constructor.
data BatchWriteOperation = BatchWriteOperation'
  { _bwoAttachTypedLink ::
      !(Maybe BatchAttachTypedLink),
    _bwoDeleteObject ::
      !(Maybe BatchDeleteObject),
    _bwoCreateObject ::
      !(Maybe BatchCreateObject),
    _bwoUpdateLinkAttributes ::
      !( Maybe
           BatchUpdateLinkAttributes
       ),
    _bwoDetachTypedLink ::
      !(Maybe BatchDetachTypedLink),
    _bwoCreateIndex ::
      !(Maybe BatchCreateIndex),
    _bwoDetachPolicy ::
      !(Maybe BatchDetachPolicy),
    _bwoDetachFromIndex ::
      !(Maybe BatchDetachFromIndex),
    _bwoAttachObject ::
      !(Maybe BatchAttachObject),
    _bwoAttachToIndex ::
      !(Maybe BatchAttachToIndex),
    _bwoUpdateObjectAttributes ::
      !( Maybe
           BatchUpdateObjectAttributes
       ),
    _bwoAttachPolicy ::
      !(Maybe BatchAttachPolicy),
    _bwoRemoveFacetFromObject ::
      !( Maybe
           BatchRemoveFacetFromObject
       ),
    _bwoAddFacetToObject ::
      !(Maybe BatchAddFacetToObject),
    _bwoDetachObject ::
      !(Maybe BatchDetachObject)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchWriteOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwoAttachTypedLink' - Attaches a typed link to a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- * 'bwoDeleteObject' - Deletes an object in a 'Directory' .
--
-- * 'bwoCreateObject' - Creates an object.
--
-- * 'bwoUpdateLinkAttributes' - Updates a given object's attributes.
--
-- * 'bwoDetachTypedLink' - Detaches a typed link from a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- * 'bwoCreateIndex' - Creates an index object. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm Indexing and search> for more information.
--
-- * 'bwoDetachPolicy' - Detaches a policy from a 'Directory' .
--
-- * 'bwoDetachFromIndex' - Detaches the specified object from the specified index.
--
-- * 'bwoAttachObject' - Attaches an object to a 'Directory' .
--
-- * 'bwoAttachToIndex' - Attaches the specified object to the specified index.
--
-- * 'bwoUpdateObjectAttributes' - Updates a given object's attributes.
--
-- * 'bwoAttachPolicy' - Attaches a policy object to a regular object. An object can have a limited number of attached policies.
--
-- * 'bwoRemoveFacetFromObject' - A batch operation that removes a facet from an object.
--
-- * 'bwoAddFacetToObject' - A batch operation that adds a facet to an object.
--
-- * 'bwoDetachObject' - Detaches an object from a 'Directory' .
batchWriteOperation ::
  BatchWriteOperation
batchWriteOperation =
  BatchWriteOperation'
    { _bwoAttachTypedLink = Nothing,
      _bwoDeleteObject = Nothing,
      _bwoCreateObject = Nothing,
      _bwoUpdateLinkAttributes = Nothing,
      _bwoDetachTypedLink = Nothing,
      _bwoCreateIndex = Nothing,
      _bwoDetachPolicy = Nothing,
      _bwoDetachFromIndex = Nothing,
      _bwoAttachObject = Nothing,
      _bwoAttachToIndex = Nothing,
      _bwoUpdateObjectAttributes = Nothing,
      _bwoAttachPolicy = Nothing,
      _bwoRemoveFacetFromObject = Nothing,
      _bwoAddFacetToObject = Nothing,
      _bwoDetachObject = Nothing
    }

-- | Attaches a typed link to a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
bwoAttachTypedLink :: Lens' BatchWriteOperation (Maybe BatchAttachTypedLink)
bwoAttachTypedLink = lens _bwoAttachTypedLink (\s a -> s {_bwoAttachTypedLink = a})

-- | Deletes an object in a 'Directory' .
bwoDeleteObject :: Lens' BatchWriteOperation (Maybe BatchDeleteObject)
bwoDeleteObject = lens _bwoDeleteObject (\s a -> s {_bwoDeleteObject = a})

-- | Creates an object.
bwoCreateObject :: Lens' BatchWriteOperation (Maybe BatchCreateObject)
bwoCreateObject = lens _bwoCreateObject (\s a -> s {_bwoCreateObject = a})

-- | Updates a given object's attributes.
bwoUpdateLinkAttributes :: Lens' BatchWriteOperation (Maybe BatchUpdateLinkAttributes)
bwoUpdateLinkAttributes = lens _bwoUpdateLinkAttributes (\s a -> s {_bwoUpdateLinkAttributes = a})

-- | Detaches a typed link from a specified source and target object. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
bwoDetachTypedLink :: Lens' BatchWriteOperation (Maybe BatchDetachTypedLink)
bwoDetachTypedLink = lens _bwoDetachTypedLink (\s a -> s {_bwoDetachTypedLink = a})

-- | Creates an index object. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm Indexing and search> for more information.
bwoCreateIndex :: Lens' BatchWriteOperation (Maybe BatchCreateIndex)
bwoCreateIndex = lens _bwoCreateIndex (\s a -> s {_bwoCreateIndex = a})

-- | Detaches a policy from a 'Directory' .
bwoDetachPolicy :: Lens' BatchWriteOperation (Maybe BatchDetachPolicy)
bwoDetachPolicy = lens _bwoDetachPolicy (\s a -> s {_bwoDetachPolicy = a})

-- | Detaches the specified object from the specified index.
bwoDetachFromIndex :: Lens' BatchWriteOperation (Maybe BatchDetachFromIndex)
bwoDetachFromIndex = lens _bwoDetachFromIndex (\s a -> s {_bwoDetachFromIndex = a})

-- | Attaches an object to a 'Directory' .
bwoAttachObject :: Lens' BatchWriteOperation (Maybe BatchAttachObject)
bwoAttachObject = lens _bwoAttachObject (\s a -> s {_bwoAttachObject = a})

-- | Attaches the specified object to the specified index.
bwoAttachToIndex :: Lens' BatchWriteOperation (Maybe BatchAttachToIndex)
bwoAttachToIndex = lens _bwoAttachToIndex (\s a -> s {_bwoAttachToIndex = a})

-- | Updates a given object's attributes.
bwoUpdateObjectAttributes :: Lens' BatchWriteOperation (Maybe BatchUpdateObjectAttributes)
bwoUpdateObjectAttributes = lens _bwoUpdateObjectAttributes (\s a -> s {_bwoUpdateObjectAttributes = a})

-- | Attaches a policy object to a regular object. An object can have a limited number of attached policies.
bwoAttachPolicy :: Lens' BatchWriteOperation (Maybe BatchAttachPolicy)
bwoAttachPolicy = lens _bwoAttachPolicy (\s a -> s {_bwoAttachPolicy = a})

-- | A batch operation that removes a facet from an object.
bwoRemoveFacetFromObject :: Lens' BatchWriteOperation (Maybe BatchRemoveFacetFromObject)
bwoRemoveFacetFromObject = lens _bwoRemoveFacetFromObject (\s a -> s {_bwoRemoveFacetFromObject = a})

-- | A batch operation that adds a facet to an object.
bwoAddFacetToObject :: Lens' BatchWriteOperation (Maybe BatchAddFacetToObject)
bwoAddFacetToObject = lens _bwoAddFacetToObject (\s a -> s {_bwoAddFacetToObject = a})

-- | Detaches an object from a 'Directory' .
bwoDetachObject :: Lens' BatchWriteOperation (Maybe BatchDetachObject)
bwoDetachObject = lens _bwoDetachObject (\s a -> s {_bwoDetachObject = a})

instance Hashable BatchWriteOperation

instance NFData BatchWriteOperation

instance ToJSON BatchWriteOperation where
  toJSON BatchWriteOperation' {..} =
    object
      ( catMaybes
          [ ("AttachTypedLink" .=) <$> _bwoAttachTypedLink,
            ("DeleteObject" .=) <$> _bwoDeleteObject,
            ("CreateObject" .=) <$> _bwoCreateObject,
            ("UpdateLinkAttributes" .=)
              <$> _bwoUpdateLinkAttributes,
            ("DetachTypedLink" .=) <$> _bwoDetachTypedLink,
            ("CreateIndex" .=) <$> _bwoCreateIndex,
            ("DetachPolicy" .=) <$> _bwoDetachPolicy,
            ("DetachFromIndex" .=) <$> _bwoDetachFromIndex,
            ("AttachObject" .=) <$> _bwoAttachObject,
            ("AttachToIndex" .=) <$> _bwoAttachToIndex,
            ("UpdateObjectAttributes" .=)
              <$> _bwoUpdateObjectAttributes,
            ("AttachPolicy" .=) <$> _bwoAttachPolicy,
            ("RemoveFacetFromObject" .=)
              <$> _bwoRemoveFacetFromObject,
            ("AddFacetToObject" .=) <$> _bwoAddFacetToObject,
            ("DetachObject" .=) <$> _bwoDetachObject
          ]
      )
