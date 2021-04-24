{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeRange
import Network.AWS.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns a paginated list of all the outgoing 'TypedLinkSpecifier' information for an object inside a 'BatchRead' operation. For more information, see 'ListOutgoingTypedLinks' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListOutgoingTypedLinks' smart constructor.
data BatchListOutgoingTypedLinks = BatchListOutgoingTypedLinks'
  { _blotlNextToken ::
      !(Maybe Text),
    _blotlFilterTypedLink ::
      !( Maybe
           TypedLinkSchemaAndFacetName
       ),
    _blotlMaxResults ::
      !(Maybe Nat),
    _blotlFilterAttributeRanges ::
      !( Maybe
           [TypedLinkAttributeRange]
       ),
    _blotlObjectReference ::
      !ObjectReference
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchListOutgoingTypedLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blotlNextToken' - The pagination token.
--
-- * 'blotlFilterTypedLink' - Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.
--
-- * 'blotlMaxResults' - The maximum number of results to retrieve.
--
-- * 'blotlFilterAttributeRanges' - Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
--
-- * 'blotlObjectReference' - The reference that identifies the object whose attributes will be listed.
batchListOutgoingTypedLinks ::
  -- | 'blotlObjectReference'
  ObjectReference ->
  BatchListOutgoingTypedLinks
batchListOutgoingTypedLinks pObjectReference_ =
  BatchListOutgoingTypedLinks'
    { _blotlNextToken =
        Nothing,
      _blotlFilterTypedLink = Nothing,
      _blotlMaxResults = Nothing,
      _blotlFilterAttributeRanges = Nothing,
      _blotlObjectReference = pObjectReference_
    }

-- | The pagination token.
blotlNextToken :: Lens' BatchListOutgoingTypedLinks (Maybe Text)
blotlNextToken = lens _blotlNextToken (\s a -> s {_blotlNextToken = a})

-- | Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.
blotlFilterTypedLink :: Lens' BatchListOutgoingTypedLinks (Maybe TypedLinkSchemaAndFacetName)
blotlFilterTypedLink = lens _blotlFilterTypedLink (\s a -> s {_blotlFilterTypedLink = a})

-- | The maximum number of results to retrieve.
blotlMaxResults :: Lens' BatchListOutgoingTypedLinks (Maybe Natural)
blotlMaxResults = lens _blotlMaxResults (\s a -> s {_blotlMaxResults = a}) . mapping _Nat

-- | Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
blotlFilterAttributeRanges :: Lens' BatchListOutgoingTypedLinks [TypedLinkAttributeRange]
blotlFilterAttributeRanges = lens _blotlFilterAttributeRanges (\s a -> s {_blotlFilterAttributeRanges = a}) . _Default . _Coerce

-- | The reference that identifies the object whose attributes will be listed.
blotlObjectReference :: Lens' BatchListOutgoingTypedLinks ObjectReference
blotlObjectReference = lens _blotlObjectReference (\s a -> s {_blotlObjectReference = a})

instance Hashable BatchListOutgoingTypedLinks

instance NFData BatchListOutgoingTypedLinks

instance ToJSON BatchListOutgoingTypedLinks where
  toJSON BatchListOutgoingTypedLinks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blotlNextToken,
            ("FilterTypedLink" .=) <$> _blotlFilterTypedLink,
            ("MaxResults" .=) <$> _blotlMaxResults,
            ("FilterAttributeRanges" .=)
              <$> _blotlFilterAttributeRanges,
            Just ("ObjectReference" .= _blotlObjectReference)
          ]
      )
