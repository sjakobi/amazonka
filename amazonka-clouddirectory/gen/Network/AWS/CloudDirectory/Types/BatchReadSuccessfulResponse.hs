{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse where

import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListIndexResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
import Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a @BatchRead@ success response operation.
--
--
--
-- /See:/ 'batchReadSuccessfulResponse' smart constructor.
data BatchReadSuccessfulResponse = BatchReadSuccessfulResponse'
  { _brsrGetObjectInformation ::
      !( Maybe
           BatchGetObjectInformationResponse
       ),
    _brsrGetObjectAttributes ::
      !( Maybe
           BatchGetObjectAttributesResponse
       ),
    _brsrListIncomingTypedLinks ::
      !( Maybe
           BatchListIncomingTypedLinksResponse
       ),
    _brsrListObjectParents ::
      !( Maybe
           BatchListObjectParentsResponse
       ),
    _brsrListPolicyAttachments ::
      !( Maybe
           BatchListPolicyAttachmentsResponse
       ),
    _brsrListObjectAttributes ::
      !( Maybe
           BatchListObjectAttributesResponse
       ),
    _brsrListObjectParentPaths ::
      !( Maybe
           BatchListObjectParentPathsResponse
       ),
    _brsrLookupPolicy ::
      !( Maybe
           BatchLookupPolicyResponse
       ),
    _brsrListAttachedIndices ::
      !( Maybe
           BatchListAttachedIndicesResponse
       ),
    _brsrListIndex ::
      !( Maybe
           BatchListIndexResponse
       ),
    _brsrListObjectChildren ::
      !( Maybe
           BatchListObjectChildrenResponse
       ),
    _brsrListObjectPolicies ::
      !( Maybe
           BatchListObjectPoliciesResponse
       ),
    _brsrGetLinkAttributes ::
      !( Maybe
           BatchGetLinkAttributesResponse
       ),
    _brsrListOutgoingTypedLinks ::
      !( Maybe
           BatchListOutgoingTypedLinksResponse
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

-- | Creates a value of 'BatchReadSuccessfulResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brsrGetObjectInformation' - Retrieves metadata about an object.
--
-- * 'brsrGetObjectAttributes' - Retrieves attributes within a facet that are associated with an object.
--
-- * 'brsrListIncomingTypedLinks' - Returns a paginated list of all the incoming 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- * 'brsrListObjectParents' - Undocumented member.
--
-- * 'brsrListPolicyAttachments' - Returns all of the @ObjectIdentifiers@ to which a given policy is attached.
--
-- * 'brsrListObjectAttributes' - Lists all attributes that are associated with an object.
--
-- * 'brsrListObjectParentPaths' - Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure> .
--
-- * 'brsrLookupPolicy' - Lists all policies from the root of the 'Directory' to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the @ObjectIdentifier@ for such objects. If policies are present, it returns @ObjectIdentifier@ , @policyId@ , and @policyType@ . Paths that don't lead to the root from the target object are ignored. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
--
-- * 'brsrListAttachedIndices' - Lists indices attached to an object.
--
-- * 'brsrListIndex' - Lists objects attached to the specified index.
--
-- * 'brsrListObjectChildren' - Returns a paginated list of child objects that are associated with a given object.
--
-- * 'brsrListObjectPolicies' - Returns policies attached to an object in pagination fashion.
--
-- * 'brsrGetLinkAttributes' - The list of attributes to retrieve from the typed link.
--
-- * 'brsrListOutgoingTypedLinks' - Returns a paginated list of all the outgoing 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
batchReadSuccessfulResponse ::
  BatchReadSuccessfulResponse
batchReadSuccessfulResponse =
  BatchReadSuccessfulResponse'
    { _brsrGetObjectInformation =
        Nothing,
      _brsrGetObjectAttributes = Nothing,
      _brsrListIncomingTypedLinks = Nothing,
      _brsrListObjectParents = Nothing,
      _brsrListPolicyAttachments = Nothing,
      _brsrListObjectAttributes = Nothing,
      _brsrListObjectParentPaths = Nothing,
      _brsrLookupPolicy = Nothing,
      _brsrListAttachedIndices = Nothing,
      _brsrListIndex = Nothing,
      _brsrListObjectChildren = Nothing,
      _brsrListObjectPolicies = Nothing,
      _brsrGetLinkAttributes = Nothing,
      _brsrListOutgoingTypedLinks = Nothing
    }

-- | Retrieves metadata about an object.
brsrGetObjectInformation :: Lens' BatchReadSuccessfulResponse (Maybe BatchGetObjectInformationResponse)
brsrGetObjectInformation = lens _brsrGetObjectInformation (\s a -> s {_brsrGetObjectInformation = a})

-- | Retrieves attributes within a facet that are associated with an object.
brsrGetObjectAttributes :: Lens' BatchReadSuccessfulResponse (Maybe BatchGetObjectAttributesResponse)
brsrGetObjectAttributes = lens _brsrGetObjectAttributes (\s a -> s {_brsrGetObjectAttributes = a})

-- | Returns a paginated list of all the incoming 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
brsrListIncomingTypedLinks :: Lens' BatchReadSuccessfulResponse (Maybe BatchListIncomingTypedLinksResponse)
brsrListIncomingTypedLinks = lens _brsrListIncomingTypedLinks (\s a -> s {_brsrListIncomingTypedLinks = a})

-- | Undocumented member.
brsrListObjectParents :: Lens' BatchReadSuccessfulResponse (Maybe BatchListObjectParentsResponse)
brsrListObjectParents = lens _brsrListObjectParents (\s a -> s {_brsrListObjectParents = a})

-- | Returns all of the @ObjectIdentifiers@ to which a given policy is attached.
brsrListPolicyAttachments :: Lens' BatchReadSuccessfulResponse (Maybe BatchListPolicyAttachmentsResponse)
brsrListPolicyAttachments = lens _brsrListPolicyAttachments (\s a -> s {_brsrListPolicyAttachments = a})

-- | Lists all attributes that are associated with an object.
brsrListObjectAttributes :: Lens' BatchReadSuccessfulResponse (Maybe BatchListObjectAttributesResponse)
brsrListObjectAttributes = lens _brsrListObjectAttributes (\s a -> s {_brsrListObjectAttributes = a})

-- | Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure> .
brsrListObjectParentPaths :: Lens' BatchReadSuccessfulResponse (Maybe BatchListObjectParentPathsResponse)
brsrListObjectParentPaths = lens _brsrListObjectParentPaths (\s a -> s {_brsrListObjectParentPaths = a})

-- | Lists all policies from the root of the 'Directory' to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the @ObjectIdentifier@ for such objects. If policies are present, it returns @ObjectIdentifier@ , @policyId@ , and @policyType@ . Paths that don't lead to the root from the target object are ignored. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
brsrLookupPolicy :: Lens' BatchReadSuccessfulResponse (Maybe BatchLookupPolicyResponse)
brsrLookupPolicy = lens _brsrLookupPolicy (\s a -> s {_brsrLookupPolicy = a})

-- | Lists indices attached to an object.
brsrListAttachedIndices :: Lens' BatchReadSuccessfulResponse (Maybe BatchListAttachedIndicesResponse)
brsrListAttachedIndices = lens _brsrListAttachedIndices (\s a -> s {_brsrListAttachedIndices = a})

-- | Lists objects attached to the specified index.
brsrListIndex :: Lens' BatchReadSuccessfulResponse (Maybe BatchListIndexResponse)
brsrListIndex = lens _brsrListIndex (\s a -> s {_brsrListIndex = a})

-- | Returns a paginated list of child objects that are associated with a given object.
brsrListObjectChildren :: Lens' BatchReadSuccessfulResponse (Maybe BatchListObjectChildrenResponse)
brsrListObjectChildren = lens _brsrListObjectChildren (\s a -> s {_brsrListObjectChildren = a})

-- | Returns policies attached to an object in pagination fashion.
brsrListObjectPolicies :: Lens' BatchReadSuccessfulResponse (Maybe BatchListObjectPoliciesResponse)
brsrListObjectPolicies = lens _brsrListObjectPolicies (\s a -> s {_brsrListObjectPolicies = a})

-- | The list of attributes to retrieve from the typed link.
brsrGetLinkAttributes :: Lens' BatchReadSuccessfulResponse (Maybe BatchGetLinkAttributesResponse)
brsrGetLinkAttributes = lens _brsrGetLinkAttributes (\s a -> s {_brsrGetLinkAttributes = a})

-- | Returns a paginated list of all the outgoing 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
brsrListOutgoingTypedLinks :: Lens' BatchReadSuccessfulResponse (Maybe BatchListOutgoingTypedLinksResponse)
brsrListOutgoingTypedLinks = lens _brsrListOutgoingTypedLinks (\s a -> s {_brsrListOutgoingTypedLinks = a})

instance FromJSON BatchReadSuccessfulResponse where
  parseJSON =
    withObject
      "BatchReadSuccessfulResponse"
      ( \x ->
          BatchReadSuccessfulResponse'
            <$> (x .:? "GetObjectInformation")
            <*> (x .:? "GetObjectAttributes")
            <*> (x .:? "ListIncomingTypedLinks")
            <*> (x .:? "ListObjectParents")
            <*> (x .:? "ListPolicyAttachments")
            <*> (x .:? "ListObjectAttributes")
            <*> (x .:? "ListObjectParentPaths")
            <*> (x .:? "LookupPolicy")
            <*> (x .:? "ListAttachedIndices")
            <*> (x .:? "ListIndex")
            <*> (x .:? "ListObjectChildren")
            <*> (x .:? "ListObjectPolicies")
            <*> (x .:? "GetLinkAttributes")
            <*> (x .:? "ListOutgoingTypedLinks")
      )

instance Hashable BatchReadSuccessfulResponse

instance NFData BatchReadSuccessfulResponse
