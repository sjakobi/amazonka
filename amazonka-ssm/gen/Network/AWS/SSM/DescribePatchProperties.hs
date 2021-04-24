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
-- Module      : Network.AWS.SSM.DescribePatchProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches. You can use the reported properties in the filters you specify in requests for actions such as 'CreatePatchBaseline' , 'UpdatePatchBaseline' , 'DescribeAvailablePatches' , and 'DescribePatchBaselines' .
--
--
-- The following section lists the properties that can be used in filters for each major operating system type:
--
--     * AMAZON_LINUX    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * AMAZON_LINUX_2    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * CENTOS    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * DEBIAN    * Valid properties: PRODUCT, PRIORITY
--
--     * MACOS    * Valid properties: PRODUCT, CLASSIFICATION
--
--     * ORACLE_LINUX    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * REDHAT_ENTERPRISE_LINUX    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * SUSE    * Valid properties: PRODUCT, CLASSIFICATION, SEVERITY
--
--     * UBUNTU    * Valid properties: PRODUCT, PRIORITY
--
--     * WINDOWS    * Valid properties: PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribePatchProperties
  ( -- * Creating a Request
    describePatchProperties,
    DescribePatchProperties,

    -- * Request Lenses
    dppNextToken,
    dppMaxResults,
    dppPatchSet,
    dppOperatingSystem,
    dppProperty,

    -- * Destructuring the Response
    describePatchPropertiesResponse,
    DescribePatchPropertiesResponse,

    -- * Response Lenses
    dpprrsNextToken,
    dpprrsProperties,
    dpprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describePatchProperties' smart constructor.
data DescribePatchProperties = DescribePatchProperties'
  { _dppNextToken ::
      !(Maybe Text),
    _dppMaxResults ::
      !(Maybe Nat),
    _dppPatchSet ::
      !(Maybe PatchSet),
    _dppOperatingSystem ::
      !OperatingSystem,
    _dppProperty ::
      !PatchProperty
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePatchProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dppMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dppPatchSet' - Indicates whether to list patches for the Windows operating system or for Microsoft applications. Not applicable for the Linux or macOS operating systems.
--
-- * 'dppOperatingSystem' - The operating system type for which to list patches.
--
-- * 'dppProperty' - The patch property for which you want to view patch details.
describePatchProperties ::
  -- | 'dppOperatingSystem'
  OperatingSystem ->
  -- | 'dppProperty'
  PatchProperty ->
  DescribePatchProperties
describePatchProperties pOperatingSystem_ pProperty_ =
  DescribePatchProperties'
    { _dppNextToken = Nothing,
      _dppMaxResults = Nothing,
      _dppPatchSet = Nothing,
      _dppOperatingSystem = pOperatingSystem_,
      _dppProperty = pProperty_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dppNextToken :: Lens' DescribePatchProperties (Maybe Text)
dppNextToken = lens _dppNextToken (\s a -> s {_dppNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dppMaxResults :: Lens' DescribePatchProperties (Maybe Natural)
dppMaxResults = lens _dppMaxResults (\s a -> s {_dppMaxResults = a}) . mapping _Nat

-- | Indicates whether to list patches for the Windows operating system or for Microsoft applications. Not applicable for the Linux or macOS operating systems.
dppPatchSet :: Lens' DescribePatchProperties (Maybe PatchSet)
dppPatchSet = lens _dppPatchSet (\s a -> s {_dppPatchSet = a})

-- | The operating system type for which to list patches.
dppOperatingSystem :: Lens' DescribePatchProperties OperatingSystem
dppOperatingSystem = lens _dppOperatingSystem (\s a -> s {_dppOperatingSystem = a})

-- | The patch property for which you want to view patch details.
dppProperty :: Lens' DescribePatchProperties PatchProperty
dppProperty = lens _dppProperty (\s a -> s {_dppProperty = a})

instance AWSPager DescribePatchProperties where
  page rq rs
    | stop (rs ^. dpprrsNextToken) = Nothing
    | stop (rs ^. dpprrsProperties) = Nothing
    | otherwise =
      Just $ rq & dppNextToken .~ rs ^. dpprrsNextToken

instance AWSRequest DescribePatchProperties where
  type
    Rs DescribePatchProperties =
      DescribePatchPropertiesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribePatchPropertiesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Properties" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePatchProperties

instance NFData DescribePatchProperties

instance ToHeaders DescribePatchProperties where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribePatchProperties" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePatchProperties where
  toJSON DescribePatchProperties' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dppNextToken,
            ("MaxResults" .=) <$> _dppMaxResults,
            ("PatchSet" .=) <$> _dppPatchSet,
            Just ("OperatingSystem" .= _dppOperatingSystem),
            Just ("Property" .= _dppProperty)
          ]
      )

instance ToPath DescribePatchProperties where
  toPath = const "/"

instance ToQuery DescribePatchProperties where
  toQuery = const mempty

-- | /See:/ 'describePatchPropertiesResponse' smart constructor.
data DescribePatchPropertiesResponse = DescribePatchPropertiesResponse'
  { _dpprrsNextToken ::
      !( Maybe
           Text
       ),
    _dpprrsProperties ::
      !( Maybe
           [ Map
               Text
               Text
           ]
       ),
    _dpprrsResponseStatus ::
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

-- | Creates a value of 'DescribePatchPropertiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpprrsNextToken' - The token for the next set of items to return. (You use this token in the next call.)
--
-- * 'dpprrsProperties' - A list of the properties for patches matching the filter request parameters.
--
-- * 'dpprrsResponseStatus' - -- | The response status code.
describePatchPropertiesResponse ::
  -- | 'dpprrsResponseStatus'
  Int ->
  DescribePatchPropertiesResponse
describePatchPropertiesResponse pResponseStatus_ =
  DescribePatchPropertiesResponse'
    { _dpprrsNextToken =
        Nothing,
      _dpprrsProperties = Nothing,
      _dpprrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. (You use this token in the next call.)
dpprrsNextToken :: Lens' DescribePatchPropertiesResponse (Maybe Text)
dpprrsNextToken = lens _dpprrsNextToken (\s a -> s {_dpprrsNextToken = a})

-- | A list of the properties for patches matching the filter request parameters.
dpprrsProperties :: Lens' DescribePatchPropertiesResponse [HashMap Text Text]
dpprrsProperties = lens _dpprrsProperties (\s a -> s {_dpprrsProperties = a}) . _Default . _Coerce

-- | -- | The response status code.
dpprrsResponseStatus :: Lens' DescribePatchPropertiesResponse Int
dpprrsResponseStatus = lens _dpprrsResponseStatus (\s a -> s {_dpprrsResponseStatus = a})

instance NFData DescribePatchPropertiesResponse
