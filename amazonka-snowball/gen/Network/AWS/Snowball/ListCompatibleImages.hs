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
-- Module      : Network.AWS.Snowball.ListCompatibleImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snow device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Snowball.ListCompatibleImages
  ( -- * Creating a Request
    listCompatibleImages,
    ListCompatibleImages,

    -- * Request Lenses
    lciNextToken,
    lciMaxResults,

    -- * Destructuring the Response
    listCompatibleImagesResponse,
    ListCompatibleImagesResponse,

    -- * Response Lenses
    lcirrsNextToken,
    lcirrsCompatibleImages,
    lcirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'listCompatibleImages' smart constructor.
data ListCompatibleImages = ListCompatibleImages'
  { _lciNextToken ::
      !(Maybe Text),
    _lciMaxResults ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCompatibleImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciNextToken' - HTTP requests are stateless. To identify what object comes "next" in the list of compatible images, you can specify a value for @NextToken@ as the starting point for your list of returned images.
--
-- * 'lciMaxResults' - The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.
listCompatibleImages ::
  ListCompatibleImages
listCompatibleImages =
  ListCompatibleImages'
    { _lciNextToken = Nothing,
      _lciMaxResults = Nothing
    }

-- | HTTP requests are stateless. To identify what object comes "next" in the list of compatible images, you can specify a value for @NextToken@ as the starting point for your list of returned images.
lciNextToken :: Lens' ListCompatibleImages (Maybe Text)
lciNextToken = lens _lciNextToken (\s a -> s {_lciNextToken = a})

-- | The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.
lciMaxResults :: Lens' ListCompatibleImages (Maybe Natural)
lciMaxResults = lens _lciMaxResults (\s a -> s {_lciMaxResults = a}) . mapping _Nat

instance AWSPager ListCompatibleImages where
  page rq rs
    | stop (rs ^. lcirrsNextToken) = Nothing
    | stop (rs ^. lcirrsCompatibleImages) = Nothing
    | otherwise =
      Just $ rq & lciNextToken .~ rs ^. lcirrsNextToken

instance AWSRequest ListCompatibleImages where
  type
    Rs ListCompatibleImages =
      ListCompatibleImagesResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          ListCompatibleImagesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CompatibleImages" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCompatibleImages

instance NFData ListCompatibleImages

instance ToHeaders ListCompatibleImages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.ListCompatibleImages" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCompatibleImages where
  toJSON ListCompatibleImages' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lciNextToken,
            ("MaxResults" .=) <$> _lciMaxResults
          ]
      )

instance ToPath ListCompatibleImages where
  toPath = const "/"

instance ToQuery ListCompatibleImages where
  toQuery = const mempty

-- | /See:/ 'listCompatibleImagesResponse' smart constructor.
data ListCompatibleImagesResponse = ListCompatibleImagesResponse'
  { _lcirrsNextToken ::
      !(Maybe Text),
    _lcirrsCompatibleImages ::
      !( Maybe
           [CompatibleImage]
       ),
    _lcirrsResponseStatus ::
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

-- | Creates a value of 'ListCompatibleImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirrsNextToken' - Because HTTP requests are stateless, this is the starting point for your next list of returned images.
--
-- * 'lcirrsCompatibleImages' - A JSON-formatted object that describes a compatible AMI, including the ID and name for a Snow device AMI.
--
-- * 'lcirrsResponseStatus' - -- | The response status code.
listCompatibleImagesResponse ::
  -- | 'lcirrsResponseStatus'
  Int ->
  ListCompatibleImagesResponse
listCompatibleImagesResponse pResponseStatus_ =
  ListCompatibleImagesResponse'
    { _lcirrsNextToken =
        Nothing,
      _lcirrsCompatibleImages = Nothing,
      _lcirrsResponseStatus = pResponseStatus_
    }

-- | Because HTTP requests are stateless, this is the starting point for your next list of returned images.
lcirrsNextToken :: Lens' ListCompatibleImagesResponse (Maybe Text)
lcirrsNextToken = lens _lcirrsNextToken (\s a -> s {_lcirrsNextToken = a})

-- | A JSON-formatted object that describes a compatible AMI, including the ID and name for a Snow device AMI.
lcirrsCompatibleImages :: Lens' ListCompatibleImagesResponse [CompatibleImage]
lcirrsCompatibleImages = lens _lcirrsCompatibleImages (\s a -> s {_lcirrsCompatibleImages = a}) . _Default . _Coerce

-- | -- | The response status code.
lcirrsResponseStatus :: Lens' ListCompatibleImagesResponse Int
lcirrsResponseStatus = lens _lcirrsResponseStatus (\s a -> s {_lcirrsResponseStatus = a})

instance NFData ListCompatibleImagesResponse
