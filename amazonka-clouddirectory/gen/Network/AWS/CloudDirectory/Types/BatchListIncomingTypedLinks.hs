{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeRange
import Network.AWS.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns a paginated list of all the incoming 'TypedLinkSpecifier' information for an object inside a 'BatchRead' operation. For more information, see 'ListIncomingTypedLinks' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListIncomingTypedLinks' smart constructor.
data BatchListIncomingTypedLinks = BatchListIncomingTypedLinks'
  { _blitlNextToken ::
      !(Maybe Text),
    _blitlFilterTypedLink ::
      !( Maybe
           TypedLinkSchemaAndFacetName
       ),
    _blitlMaxResults ::
      !(Maybe Nat),
    _blitlFilterAttributeRanges ::
      !( Maybe
           [TypedLinkAttributeRange]
       ),
    _blitlObjectReference ::
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

-- | Creates a value of 'BatchListIncomingTypedLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blitlNextToken' - The pagination token.
--
-- * 'blitlFilterTypedLink' - Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.
--
-- * 'blitlMaxResults' - The maximum number of results to retrieve.
--
-- * 'blitlFilterAttributeRanges' - Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
--
-- * 'blitlObjectReference' - The reference that identifies the object whose attributes will be listed.
batchListIncomingTypedLinks ::
  -- | 'blitlObjectReference'
  ObjectReference ->
  BatchListIncomingTypedLinks
batchListIncomingTypedLinks pObjectReference_ =
  BatchListIncomingTypedLinks'
    { _blitlNextToken =
        Nothing,
      _blitlFilterTypedLink = Nothing,
      _blitlMaxResults = Nothing,
      _blitlFilterAttributeRanges = Nothing,
      _blitlObjectReference = pObjectReference_
    }

-- | The pagination token.
blitlNextToken :: Lens' BatchListIncomingTypedLinks (Maybe Text)
blitlNextToken = lens _blitlNextToken (\s a -> s {_blitlNextToken = a})

-- | Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.
blitlFilterTypedLink :: Lens' BatchListIncomingTypedLinks (Maybe TypedLinkSchemaAndFacetName)
blitlFilterTypedLink = lens _blitlFilterTypedLink (\s a -> s {_blitlFilterTypedLink = a})

-- | The maximum number of results to retrieve.
blitlMaxResults :: Lens' BatchListIncomingTypedLinks (Maybe Natural)
blitlMaxResults = lens _blitlMaxResults (\s a -> s {_blitlMaxResults = a}) . mapping _Nat

-- | Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
blitlFilterAttributeRanges :: Lens' BatchListIncomingTypedLinks [TypedLinkAttributeRange]
blitlFilterAttributeRanges = lens _blitlFilterAttributeRanges (\s a -> s {_blitlFilterAttributeRanges = a}) . _Default . _Coerce

-- | The reference that identifies the object whose attributes will be listed.
blitlObjectReference :: Lens' BatchListIncomingTypedLinks ObjectReference
blitlObjectReference = lens _blitlObjectReference (\s a -> s {_blitlObjectReference = a})

instance Hashable BatchListIncomingTypedLinks

instance NFData BatchListIncomingTypedLinks

instance ToJSON BatchListIncomingTypedLinks where
  toJSON BatchListIncomingTypedLinks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blitlNextToken,
            ("FilterTypedLink" .=) <$> _blitlFilterTypedLink,
            ("MaxResults" .=) <$> _blitlMaxResults,
            ("FilterAttributeRanges" .=)
              <$> _blitlFilterAttributeRanges,
            Just ("ObjectReference" .= _blitlObjectReference)
          ]
      )
