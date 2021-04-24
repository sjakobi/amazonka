{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.ListAccountAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html Using an alias for your AWS account ID> in the /IAM User Guide/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListAccountAliases
  ( -- * Creating a Request
    listAccountAliases,
    ListAccountAliases,

    -- * Request Lenses
    laaMaxItems,
    laaMarker,

    -- * Destructuring the Response
    listAccountAliasesResponse,
    ListAccountAliasesResponse,

    -- * Response Lenses
    laarrsIsTruncated,
    laarrsMarker,
    laarrsResponseStatus,
    laarrsAccountAliases,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAccountAliases' smart constructor.
data ListAccountAliases = ListAccountAliases'
  { _laaMaxItems ::
      !(Maybe Nat),
    _laaMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAccountAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laaMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'laaMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listAccountAliases ::
  ListAccountAliases
listAccountAliases =
  ListAccountAliases'
    { _laaMaxItems = Nothing,
      _laaMarker = Nothing
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
laaMaxItems :: Lens' ListAccountAliases (Maybe Natural)
laaMaxItems = lens _laaMaxItems (\s a -> s {_laaMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
laaMarker :: Lens' ListAccountAliases (Maybe Text)
laaMarker = lens _laaMarker (\s a -> s {_laaMarker = a})

instance AWSPager ListAccountAliases where
  page rq rs
    | stop (rs ^. laarrsIsTruncated) = Nothing
    | isNothing (rs ^. laarrsMarker) = Nothing
    | otherwise =
      Just $ rq & laaMarker .~ rs ^. laarrsMarker

instance AWSRequest ListAccountAliases where
  type
    Rs ListAccountAliases =
      ListAccountAliasesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListAccountAliasesResult"
      ( \s h x ->
          ListAccountAliasesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "AccountAliases" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListAccountAliases

instance NFData ListAccountAliases

instance ToHeaders ListAccountAliases where
  toHeaders = const mempty

instance ToPath ListAccountAliases where
  toPath = const "/"

instance ToQuery ListAccountAliases where
  toQuery ListAccountAliases' {..} =
    mconcat
      [ "Action" =: ("ListAccountAliases" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _laaMaxItems,
        "Marker" =: _laaMarker
      ]

-- | Contains the response to a successful 'ListAccountAliases' request.
--
--
--
-- /See:/ 'listAccountAliasesResponse' smart constructor.
data ListAccountAliasesResponse = ListAccountAliasesResponse'
  { _laarrsIsTruncated ::
      !(Maybe Bool),
    _laarrsMarker ::
      !(Maybe Text),
    _laarrsResponseStatus ::
      !Int,
    _laarrsAccountAliases ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAccountAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laarrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'laarrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'laarrsResponseStatus' - -- | The response status code.
--
-- * 'laarrsAccountAliases' - A list of aliases associated with the account. AWS supports only one alias per account.
listAccountAliasesResponse ::
  -- | 'laarrsResponseStatus'
  Int ->
  ListAccountAliasesResponse
listAccountAliasesResponse pResponseStatus_ =
  ListAccountAliasesResponse'
    { _laarrsIsTruncated =
        Nothing,
      _laarrsMarker = Nothing,
      _laarrsResponseStatus = pResponseStatus_,
      _laarrsAccountAliases = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
laarrsIsTruncated :: Lens' ListAccountAliasesResponse (Maybe Bool)
laarrsIsTruncated = lens _laarrsIsTruncated (\s a -> s {_laarrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
laarrsMarker :: Lens' ListAccountAliasesResponse (Maybe Text)
laarrsMarker = lens _laarrsMarker (\s a -> s {_laarrsMarker = a})

-- | -- | The response status code.
laarrsResponseStatus :: Lens' ListAccountAliasesResponse Int
laarrsResponseStatus = lens _laarrsResponseStatus (\s a -> s {_laarrsResponseStatus = a})

-- | A list of aliases associated with the account. AWS supports only one alias per account.
laarrsAccountAliases :: Lens' ListAccountAliasesResponse [Text]
laarrsAccountAliases = lens _laarrsAccountAliases (\s a -> s {_laarrsAccountAliases = a}) . _Coerce

instance NFData ListAccountAliasesResponse
