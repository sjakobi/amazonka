{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse where

import Network.AWS.CloudDirectory.Types.TypedLinkSpecifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListIncomingTypedLinks' response operation.
--
--
--
-- /See:/ 'batchListIncomingTypedLinksResponse' smart constructor.
data BatchListIncomingTypedLinksResponse = BatchListIncomingTypedLinksResponse'
  { _blitlrLinkSpecifiers ::
      !( Maybe
           [TypedLinkSpecifier]
       ),
    _blitlrNextToken ::
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

-- | Creates a value of 'BatchListIncomingTypedLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blitlrLinkSpecifiers' - Returns one or more typed link specifiers as output.
--
-- * 'blitlrNextToken' - The pagination token.
batchListIncomingTypedLinksResponse ::
  BatchListIncomingTypedLinksResponse
batchListIncomingTypedLinksResponse =
  BatchListIncomingTypedLinksResponse'
    { _blitlrLinkSpecifiers =
        Nothing,
      _blitlrNextToken = Nothing
    }

-- | Returns one or more typed link specifiers as output.
blitlrLinkSpecifiers :: Lens' BatchListIncomingTypedLinksResponse [TypedLinkSpecifier]
blitlrLinkSpecifiers = lens _blitlrLinkSpecifiers (\s a -> s {_blitlrLinkSpecifiers = a}) . _Default . _Coerce

-- | The pagination token.
blitlrNextToken :: Lens' BatchListIncomingTypedLinksResponse (Maybe Text)
blitlrNextToken = lens _blitlrNextToken (\s a -> s {_blitlrNextToken = a})

instance FromJSON BatchListIncomingTypedLinksResponse where
  parseJSON =
    withObject
      "BatchListIncomingTypedLinksResponse"
      ( \x ->
          BatchListIncomingTypedLinksResponse'
            <$> (x .:? "LinkSpecifiers" .!= mempty)
            <*> (x .:? "NextToken")
      )

instance Hashable BatchListIncomingTypedLinksResponse

instance NFData BatchListIncomingTypedLinksResponse
