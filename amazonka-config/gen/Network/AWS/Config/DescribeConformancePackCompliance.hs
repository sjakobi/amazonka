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
-- Module      : Network.AWS.Config.DescribeConformancePackCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns compliance details for each rule in that conformance pack.
module Network.AWS.Config.DescribeConformancePackCompliance
  ( -- * Creating a Request
    describeConformancePackCompliance,
    DescribeConformancePackCompliance,

    -- * Request Lenses
    dcpcNextToken,
    dcpcFilters,
    dcpcLimit,
    dcpcConformancePackName,

    -- * Destructuring the Response
    describeConformancePackComplianceResponse,
    DescribeConformancePackComplianceResponse,

    -- * Response Lenses
    dcpcrrsNextToken,
    dcpcrrsResponseStatus,
    dcpcrrsConformancePackName,
    dcpcrrsConformancePackRuleComplianceList,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConformancePackCompliance' smart constructor.
data DescribeConformancePackCompliance = DescribeConformancePackCompliance'
  { _dcpcNextToken ::
      !( Maybe
           Text
       ),
    _dcpcFilters ::
      !( Maybe
           ConformancePackComplianceFilters
       ),
    _dcpcLimit ::
      !( Maybe
           Nat
       ),
    _dcpcConformancePackName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConformancePackCompliance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpcNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcpcFilters' - A @ConformancePackComplianceFilters@ object.
--
-- * 'dcpcLimit' - The maximum number of AWS Config rules within a conformance pack are returned on each page.
--
-- * 'dcpcConformancePackName' - Name of the conformance pack.
describeConformancePackCompliance ::
  -- | 'dcpcConformancePackName'
  Text ->
  DescribeConformancePackCompliance
describeConformancePackCompliance
  pConformancePackName_ =
    DescribeConformancePackCompliance'
      { _dcpcNextToken =
          Nothing,
        _dcpcFilters = Nothing,
        _dcpcLimit = Nothing,
        _dcpcConformancePackName =
          pConformancePackName_
      }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcpcNextToken :: Lens' DescribeConformancePackCompliance (Maybe Text)
dcpcNextToken = lens _dcpcNextToken (\s a -> s {_dcpcNextToken = a})

-- | A @ConformancePackComplianceFilters@ object.
dcpcFilters :: Lens' DescribeConformancePackCompliance (Maybe ConformancePackComplianceFilters)
dcpcFilters = lens _dcpcFilters (\s a -> s {_dcpcFilters = a})

-- | The maximum number of AWS Config rules within a conformance pack are returned on each page.
dcpcLimit :: Lens' DescribeConformancePackCompliance (Maybe Natural)
dcpcLimit = lens _dcpcLimit (\s a -> s {_dcpcLimit = a}) . mapping _Nat

-- | Name of the conformance pack.
dcpcConformancePackName :: Lens' DescribeConformancePackCompliance Text
dcpcConformancePackName = lens _dcpcConformancePackName (\s a -> s {_dcpcConformancePackName = a})

instance AWSRequest DescribeConformancePackCompliance where
  type
    Rs DescribeConformancePackCompliance =
      DescribeConformancePackComplianceResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConformancePackComplianceResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .:> "ConformancePackName")
            <*> ( x .?> "ConformancePackRuleComplianceList"
                    .!@ mempty
                )
      )

instance Hashable DescribeConformancePackCompliance

instance NFData DescribeConformancePackCompliance

instance ToHeaders DescribeConformancePackCompliance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConformancePackCompliance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConformancePackCompliance where
  toJSON DescribeConformancePackCompliance' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcpcNextToken,
            ("Filters" .=) <$> _dcpcFilters,
            ("Limit" .=) <$> _dcpcLimit,
            Just
              ("ConformancePackName" .= _dcpcConformancePackName)
          ]
      )

instance ToPath DescribeConformancePackCompliance where
  toPath = const "/"

instance ToQuery DescribeConformancePackCompliance where
  toQuery = const mempty

-- | /See:/ 'describeConformancePackComplianceResponse' smart constructor.
data DescribeConformancePackComplianceResponse = DescribeConformancePackComplianceResponse'
  { _dcpcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcpcrrsResponseStatus ::
      !Int,
    _dcpcrrsConformancePackName ::
      !Text,
    _dcpcrrsConformancePackRuleComplianceList ::
      ![ConformancePackRuleCompliance]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConformancePackComplianceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpcrrsNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcpcrrsResponseStatus' - -- | The response status code.
--
-- * 'dcpcrrsConformancePackName' - Name of the conformance pack.
--
-- * 'dcpcrrsConformancePackRuleComplianceList' - Returns a list of @ConformancePackRuleCompliance@ objects.
describeConformancePackComplianceResponse ::
  -- | 'dcpcrrsResponseStatus'
  Int ->
  -- | 'dcpcrrsConformancePackName'
  Text ->
  DescribeConformancePackComplianceResponse
describeConformancePackComplianceResponse
  pResponseStatus_
  pConformancePackName_ =
    DescribeConformancePackComplianceResponse'
      { _dcpcrrsNextToken =
          Nothing,
        _dcpcrrsResponseStatus =
          pResponseStatus_,
        _dcpcrrsConformancePackName =
          pConformancePackName_,
        _dcpcrrsConformancePackRuleComplianceList =
          mempty
      }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcpcrrsNextToken :: Lens' DescribeConformancePackComplianceResponse (Maybe Text)
dcpcrrsNextToken = lens _dcpcrrsNextToken (\s a -> s {_dcpcrrsNextToken = a})

-- | -- | The response status code.
dcpcrrsResponseStatus :: Lens' DescribeConformancePackComplianceResponse Int
dcpcrrsResponseStatus = lens _dcpcrrsResponseStatus (\s a -> s {_dcpcrrsResponseStatus = a})

-- | Name of the conformance pack.
dcpcrrsConformancePackName :: Lens' DescribeConformancePackComplianceResponse Text
dcpcrrsConformancePackName = lens _dcpcrrsConformancePackName (\s a -> s {_dcpcrrsConformancePackName = a})

-- | Returns a list of @ConformancePackRuleCompliance@ objects.
dcpcrrsConformancePackRuleComplianceList :: Lens' DescribeConformancePackComplianceResponse [ConformancePackRuleCompliance]
dcpcrrsConformancePackRuleComplianceList = lens _dcpcrrsConformancePackRuleComplianceList (\s a -> s {_dcpcrrsConformancePackRuleComplianceList = a}) . _Coerce

instance
  NFData
    DescribeConformancePackComplianceResponse
