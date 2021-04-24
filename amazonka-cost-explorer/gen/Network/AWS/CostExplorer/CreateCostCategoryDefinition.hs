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
-- Module      : Network.AWS.CostExplorer.CreateCostCategoryDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cost Category with the requested name and rules.
module Network.AWS.CostExplorer.CreateCostCategoryDefinition
  ( -- * Creating a Request
    createCostCategoryDefinition,
    CreateCostCategoryDefinition,

    -- * Request Lenses
    cccdName,
    cccdRuleVersion,
    cccdRules,

    -- * Destructuring the Response
    createCostCategoryDefinitionResponse,
    CreateCostCategoryDefinitionResponse,

    -- * Response Lenses
    cccdrrsCostCategoryARN,
    cccdrrsEffectiveStart,
    cccdrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCostCategoryDefinition' smart constructor.
data CreateCostCategoryDefinition = CreateCostCategoryDefinition'
  { _cccdName ::
      !Text,
    _cccdRuleVersion ::
      !CostCategoryRuleVersion,
    _cccdRules ::
      !( List1
           CostCategoryRule
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

-- | Creates a value of 'CreateCostCategoryDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccdName' - Undocumented member.
--
-- * 'cccdRuleVersion' - Undocumented member.
--
-- * 'cccdRules' - The Cost Category rules used to categorize costs. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html CostCategoryRule> .
createCostCategoryDefinition ::
  -- | 'cccdName'
  Text ->
  -- | 'cccdRuleVersion'
  CostCategoryRuleVersion ->
  -- | 'cccdRules'
  NonEmpty CostCategoryRule ->
  CreateCostCategoryDefinition
createCostCategoryDefinition
  pName_
  pRuleVersion_
  pRules_ =
    CreateCostCategoryDefinition'
      { _cccdName = pName_,
        _cccdRuleVersion = pRuleVersion_,
        _cccdRules = _List1 # pRules_
      }

-- | Undocumented member.
cccdName :: Lens' CreateCostCategoryDefinition Text
cccdName = lens _cccdName (\s a -> s {_cccdName = a})

-- | Undocumented member.
cccdRuleVersion :: Lens' CreateCostCategoryDefinition CostCategoryRuleVersion
cccdRuleVersion = lens _cccdRuleVersion (\s a -> s {_cccdRuleVersion = a})

-- | The Cost Category rules used to categorize costs. For more information, see <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html CostCategoryRule> .
cccdRules :: Lens' CreateCostCategoryDefinition (NonEmpty CostCategoryRule)
cccdRules = lens _cccdRules (\s a -> s {_cccdRules = a}) . _List1

instance AWSRequest CreateCostCategoryDefinition where
  type
    Rs CreateCostCategoryDefinition =
      CreateCostCategoryDefinitionResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          CreateCostCategoryDefinitionResponse'
            <$> (x .?> "CostCategoryArn")
            <*> (x .?> "EffectiveStart")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCostCategoryDefinition

instance NFData CreateCostCategoryDefinition

instance ToHeaders CreateCostCategoryDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.CreateCostCategoryDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCostCategoryDefinition where
  toJSON CreateCostCategoryDefinition' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _cccdName),
            Just ("RuleVersion" .= _cccdRuleVersion),
            Just ("Rules" .= _cccdRules)
          ]
      )

instance ToPath CreateCostCategoryDefinition where
  toPath = const "/"

instance ToQuery CreateCostCategoryDefinition where
  toQuery = const mempty

-- | /See:/ 'createCostCategoryDefinitionResponse' smart constructor.
data CreateCostCategoryDefinitionResponse = CreateCostCategoryDefinitionResponse'
  { _cccdrrsCostCategoryARN ::
      !( Maybe
           Text
       ),
    _cccdrrsEffectiveStart ::
      !( Maybe
           Text
       ),
    _cccdrrsResponseStatus ::
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

-- | Creates a value of 'CreateCostCategoryDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccdrrsCostCategoryARN' - The unique identifier for your newly created Cost Category.
--
-- * 'cccdrrsEffectiveStart' - The Cost Category's effective start date.
--
-- * 'cccdrrsResponseStatus' - -- | The response status code.
createCostCategoryDefinitionResponse ::
  -- | 'cccdrrsResponseStatus'
  Int ->
  CreateCostCategoryDefinitionResponse
createCostCategoryDefinitionResponse pResponseStatus_ =
  CreateCostCategoryDefinitionResponse'
    { _cccdrrsCostCategoryARN =
        Nothing,
      _cccdrrsEffectiveStart = Nothing,
      _cccdrrsResponseStatus =
        pResponseStatus_
    }

-- | The unique identifier for your newly created Cost Category.
cccdrrsCostCategoryARN :: Lens' CreateCostCategoryDefinitionResponse (Maybe Text)
cccdrrsCostCategoryARN = lens _cccdrrsCostCategoryARN (\s a -> s {_cccdrrsCostCategoryARN = a})

-- | The Cost Category's effective start date.
cccdrrsEffectiveStart :: Lens' CreateCostCategoryDefinitionResponse (Maybe Text)
cccdrrsEffectiveStart = lens _cccdrrsEffectiveStart (\s a -> s {_cccdrrsEffectiveStart = a})

-- | -- | The response status code.
cccdrrsResponseStatus :: Lens' CreateCostCategoryDefinitionResponse Int
cccdrrsResponseStatus = lens _cccdrrsResponseStatus (\s a -> s {_cccdrrsResponseStatus = a})

instance NFData CreateCostCategoryDefinitionResponse
