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
-- Module      : Network.AWS.AppStream.DescribeImages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeImages
  ( -- * Creating a Request
    describeImages,
    DescribeImages,

    -- * Request Lenses
    diNames,
    diNextToken,
    diARNs,
    diMaxResults,
    diType,

    -- * Destructuring the Response
    describeImagesResponse,
    DescribeImagesResponse,

    -- * Response Lenses
    dirirsNextToken,
    dirirsImages,
    dirirsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImages' smart constructor.
data DescribeImages = DescribeImages'
  { _diNames ::
      !(Maybe [Text]),
    _diNextToken :: !(Maybe Text),
    _diARNs :: !(Maybe [Text]),
    _diMaxResults :: !(Maybe Nat),
    _diType :: !(Maybe VisibilityType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diNames' - The names of the public or private images to describe.
--
-- * 'diNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'diARNs' - The ARNs of the public, private, and shared images to describe.
--
-- * 'diMaxResults' - The maximum size of each page of results.
--
-- * 'diType' - The type of image (public, private, or shared) to describe.
describeImages ::
  DescribeImages
describeImages =
  DescribeImages'
    { _diNames = Nothing,
      _diNextToken = Nothing,
      _diARNs = Nothing,
      _diMaxResults = Nothing,
      _diType = Nothing
    }

-- | The names of the public or private images to describe.
diNames :: Lens' DescribeImages [Text]
diNames = lens _diNames (\s a -> s {_diNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
diNextToken :: Lens' DescribeImages (Maybe Text)
diNextToken = lens _diNextToken (\s a -> s {_diNextToken = a})

-- | The ARNs of the public, private, and shared images to describe.
diARNs :: Lens' DescribeImages [Text]
diARNs = lens _diARNs (\s a -> s {_diARNs = a}) . _Default . _Coerce

-- | The maximum size of each page of results.
diMaxResults :: Lens' DescribeImages (Maybe Natural)
diMaxResults = lens _diMaxResults (\s a -> s {_diMaxResults = a}) . mapping _Nat

-- | The type of image (public, private, or shared) to describe.
diType :: Lens' DescribeImages (Maybe VisibilityType)
diType = lens _diType (\s a -> s {_diType = a})

instance AWSPager DescribeImages where
  page rq rs
    | stop (rs ^. dirirsNextToken) = Nothing
    | stop (rs ^. dirirsImages) = Nothing
    | otherwise =
      Just $ rq & diNextToken .~ rs ^. dirirsNextToken

instance AWSRequest DescribeImages where
  type Rs DescribeImages = DescribeImagesResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeImagesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Images" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImages

instance NFData DescribeImages

instance ToHeaders DescribeImages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeImages" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImages where
  toJSON DescribeImages' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _diNames,
            ("NextToken" .=) <$> _diNextToken,
            ("Arns" .=) <$> _diARNs,
            ("MaxResults" .=) <$> _diMaxResults,
            ("Type" .=) <$> _diType
          ]
      )

instance ToPath DescribeImages where
  toPath = const "/"

instance ToQuery DescribeImages where
  toQuery = const mempty

-- | /See:/ 'describeImagesResponse' smart constructor.
data DescribeImagesResponse = DescribeImagesResponse'
  { _dirirsNextToken ::
      !(Maybe Text),
    _dirirsImages ::
      !(Maybe [Image]),
    _dirirsResponseStatus ::
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

-- | Creates a value of 'DescribeImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirirsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dirirsImages' - Information about the images.
--
-- * 'dirirsResponseStatus' - -- | The response status code.
describeImagesResponse ::
  -- | 'dirirsResponseStatus'
  Int ->
  DescribeImagesResponse
describeImagesResponse pResponseStatus_ =
  DescribeImagesResponse'
    { _dirirsNextToken = Nothing,
      _dirirsImages = Nothing,
      _dirirsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dirirsNextToken :: Lens' DescribeImagesResponse (Maybe Text)
dirirsNextToken = lens _dirirsNextToken (\s a -> s {_dirirsNextToken = a})

-- | Information about the images.
dirirsImages :: Lens' DescribeImagesResponse [Image]
dirirsImages = lens _dirirsImages (\s a -> s {_dirirsImages = a}) . _Default . _Coerce

-- | -- | The response status code.
dirirsResponseStatus :: Lens' DescribeImagesResponse Int
dirirsResponseStatus = lens _dirirsResponseStatus (\s a -> s {_dirirsResponseStatus = a})

instance NFData DescribeImagesResponse
