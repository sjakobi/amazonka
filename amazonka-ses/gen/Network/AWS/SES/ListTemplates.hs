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
-- Module      : Network.AWS.SES.ListTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the email templates present in your Amazon SES account in the current AWS Region.
--
--
-- You can execute this operation no more than once per second.
--
--
-- This operation returns paginated results.
module Network.AWS.SES.ListTemplates
  ( -- * Creating a Request
    listTemplates,
    ListTemplates,

    -- * Request Lenses
    ltNextToken,
    ltMaxItems,

    -- * Destructuring the Response
    listTemplatesResponse,
    ListTemplatesResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTemplatesMetadata,
    ltrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'listTemplates' smart constructor.
data ListTemplates = ListTemplates'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxItems :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTemplates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - A token returned from a previous call to @ListTemplates@ to indicate the position in the list of email templates.
--
-- * 'ltMaxItems' - The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results.
listTemplates ::
  ListTemplates
listTemplates =
  ListTemplates'
    { _ltNextToken = Nothing,
      _ltMaxItems = Nothing
    }

-- | A token returned from a previous call to @ListTemplates@ to indicate the position in the list of email templates.
ltNextToken :: Lens' ListTemplates (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results.
ltMaxItems :: Lens' ListTemplates (Maybe Int)
ltMaxItems = lens _ltMaxItems (\s a -> s {_ltMaxItems = a})

instance AWSPager ListTemplates where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTemplatesMetadata) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTemplates where
  type Rs ListTemplates = ListTemplatesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "ListTemplatesResult"
      ( \s h x ->
          ListTemplatesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "TemplatesMetadata" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListTemplates

instance NFData ListTemplates

instance ToHeaders ListTemplates where
  toHeaders = const mempty

instance ToPath ListTemplates where
  toPath = const "/"

instance ToQuery ListTemplates where
  toQuery ListTemplates' {..} =
    mconcat
      [ "Action" =: ("ListTemplates" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _ltNextToken,
        "MaxItems" =: _ltMaxItems
      ]

-- | /See:/ 'listTemplatesResponse' smart constructor.
data ListTemplatesResponse = ListTemplatesResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTemplatesMetadata ::
      !(Maybe [TemplateMetadata]),
    _ltrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent call to @ListTemplates@ to retrieve the next 50 email templates.
--
-- * 'ltrrsTemplatesMetadata' - An array the contains the name and creation time stamp for each template in your Amazon SES account.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTemplatesResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTemplatesResponse
listTemplatesResponse pResponseStatus_ =
  ListTemplatesResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTemplatesMetadata = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent call to @ListTemplates@ to retrieve the next 50 email templates.
ltrrsNextToken :: Lens' ListTemplatesResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | An array the contains the name and creation time stamp for each template in your Amazon SES account.
ltrrsTemplatesMetadata :: Lens' ListTemplatesResponse [TemplateMetadata]
ltrrsTemplatesMetadata = lens _ltrrsTemplatesMetadata (\s a -> s {_ltrrsTemplatesMetadata = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTemplatesResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTemplatesResponse
