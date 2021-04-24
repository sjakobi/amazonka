{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse where

import Network.AWS.CloudDirectory.Types.TypedLinkSpecifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListOutgoingTypedLinks' response operation.
--
--
--
-- /See:/ 'batchListOutgoingTypedLinksResponse' smart constructor.
data BatchListOutgoingTypedLinksResponse = BatchListOutgoingTypedLinksResponse'
  { _blotlrNextToken ::
      !( Maybe
           Text
       ),
    _blotlrTypedLinkSpecifiers ::
      !( Maybe
           [TypedLinkSpecifier]
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

-- | Creates a value of 'BatchListOutgoingTypedLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blotlrNextToken' - The pagination token.
--
-- * 'blotlrTypedLinkSpecifiers' - Returns a typed link specifier as output.
batchListOutgoingTypedLinksResponse ::
  BatchListOutgoingTypedLinksResponse
batchListOutgoingTypedLinksResponse =
  BatchListOutgoingTypedLinksResponse'
    { _blotlrNextToken =
        Nothing,
      _blotlrTypedLinkSpecifiers = Nothing
    }

-- | The pagination token.
blotlrNextToken :: Lens' BatchListOutgoingTypedLinksResponse (Maybe Text)
blotlrNextToken = lens _blotlrNextToken (\s a -> s {_blotlrNextToken = a})

-- | Returns a typed link specifier as output.
blotlrTypedLinkSpecifiers :: Lens' BatchListOutgoingTypedLinksResponse [TypedLinkSpecifier]
blotlrTypedLinkSpecifiers = lens _blotlrTypedLinkSpecifiers (\s a -> s {_blotlrTypedLinkSpecifiers = a}) . _Default . _Coerce

instance FromJSON BatchListOutgoingTypedLinksResponse where
  parseJSON =
    withObject
      "BatchListOutgoingTypedLinksResponse"
      ( \x ->
          BatchListOutgoingTypedLinksResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "TypedLinkSpecifiers" .!= mempty)
      )

instance Hashable BatchListOutgoingTypedLinksResponse

instance NFData BatchListOutgoingTypedLinksResponse
