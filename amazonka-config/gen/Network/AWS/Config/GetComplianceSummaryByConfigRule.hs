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
-- Module      : Network.AWS.Config.GetComplianceSummaryByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
module Network.AWS.Config.GetComplianceSummaryByConfigRule
  ( -- * Creating a Request
    getComplianceSummaryByConfigRule,
    GetComplianceSummaryByConfigRule,

    -- * Destructuring the Response
    getComplianceSummaryByConfigRuleResponse,
    GetComplianceSummaryByConfigRuleResponse,

    -- * Response Lenses
    gcsbcrrrsComplianceSummary,
    gcsbcrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getComplianceSummaryByConfigRule' smart constructor.
data GetComplianceSummaryByConfigRule = GetComplianceSummaryByConfigRule'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetComplianceSummaryByConfigRule' with the minimum fields required to make a request.
getComplianceSummaryByConfigRule ::
  GetComplianceSummaryByConfigRule
getComplianceSummaryByConfigRule =
  GetComplianceSummaryByConfigRule'

instance AWSRequest GetComplianceSummaryByConfigRule where
  type
    Rs GetComplianceSummaryByConfigRule =
      GetComplianceSummaryByConfigRuleResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetComplianceSummaryByConfigRuleResponse'
            <$> (x .?> "ComplianceSummary") <*> (pure (fromEnum s))
      )

instance Hashable GetComplianceSummaryByConfigRule

instance NFData GetComplianceSummaryByConfigRule

instance ToHeaders GetComplianceSummaryByConfigRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetComplianceSummaryByConfigRule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetComplianceSummaryByConfigRule where
  toJSON = const (Object mempty)

instance ToPath GetComplianceSummaryByConfigRule where
  toPath = const "/"

instance ToQuery GetComplianceSummaryByConfigRule where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'getComplianceSummaryByConfigRuleResponse' smart constructor.
data GetComplianceSummaryByConfigRuleResponse = GetComplianceSummaryByConfigRuleResponse'
  { _gcsbcrrrsComplianceSummary ::
      !( Maybe
           ComplianceSummary
       ),
    _gcsbcrrrsResponseStatus ::
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

-- | Creates a value of 'GetComplianceSummaryByConfigRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsbcrrrsComplianceSummary' - The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.
--
-- * 'gcsbcrrrsResponseStatus' - -- | The response status code.
getComplianceSummaryByConfigRuleResponse ::
  -- | 'gcsbcrrrsResponseStatus'
  Int ->
  GetComplianceSummaryByConfigRuleResponse
getComplianceSummaryByConfigRuleResponse
  pResponseStatus_ =
    GetComplianceSummaryByConfigRuleResponse'
      { _gcsbcrrrsComplianceSummary =
          Nothing,
        _gcsbcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.
gcsbcrrrsComplianceSummary :: Lens' GetComplianceSummaryByConfigRuleResponse (Maybe ComplianceSummary)
gcsbcrrrsComplianceSummary = lens _gcsbcrrrsComplianceSummary (\s a -> s {_gcsbcrrrsComplianceSummary = a})

-- | -- | The response status code.
gcsbcrrrsResponseStatus :: Lens' GetComplianceSummaryByConfigRuleResponse Int
gcsbcrrrsResponseStatus = lens _gcsbcrrrsResponseStatus (\s a -> s {_gcsbcrrrsResponseStatus = a})

instance
  NFData
    GetComplianceSummaryByConfigRuleResponse
