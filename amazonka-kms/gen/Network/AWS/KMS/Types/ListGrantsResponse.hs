{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.ListGrantsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ListGrantsResponse where

import Network.AWS.KMS.Types.GrantListEntry
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'listGrantsResponse' smart constructor.
data ListGrantsResponse = ListGrantsResponse'
  { _lgrNextMarker ::
      !(Maybe Text),
    _lgrGrants ::
      !(Maybe [GrantListEntry]),
    _lgrTruncated :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGrantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
--
-- * 'lgrGrants' - A list of grants.
--
-- * 'lgrTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
listGrantsResponse ::
  ListGrantsResponse
listGrantsResponse =
  ListGrantsResponse'
    { _lgrNextMarker = Nothing,
      _lgrGrants = Nothing,
      _lgrTruncated = Nothing
    }

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
lgrNextMarker :: Lens' ListGrantsResponse (Maybe Text)
lgrNextMarker = lens _lgrNextMarker (\s a -> s {_lgrNextMarker = a})

-- | A list of grants.
lgrGrants :: Lens' ListGrantsResponse [GrantListEntry]
lgrGrants = lens _lgrGrants (\s a -> s {_lgrGrants = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
lgrTruncated :: Lens' ListGrantsResponse (Maybe Bool)
lgrTruncated = lens _lgrTruncated (\s a -> s {_lgrTruncated = a})

instance FromJSON ListGrantsResponse where
  parseJSON =
    withObject
      "ListGrantsResponse"
      ( \x ->
          ListGrantsResponse'
            <$> (x .:? "NextMarker")
            <*> (x .:? "Grants" .!= mempty)
            <*> (x .:? "Truncated")
      )

instance Hashable ListGrantsResponse

instance NFData ListGrantsResponse
