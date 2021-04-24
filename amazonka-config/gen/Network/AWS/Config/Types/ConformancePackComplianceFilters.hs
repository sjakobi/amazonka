{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConformancePackComplianceFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConformancePackComplianceFilters where

import Network.AWS.Config.Types.ConformancePackComplianceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Filters the conformance pack by compliance types and AWS Config rule names.
--
--
--
-- /See:/ 'conformancePackComplianceFilters' smart constructor.
data ConformancePackComplianceFilters = ConformancePackComplianceFilters'
  { _cpcfComplianceType ::
      !( Maybe
           ConformancePackComplianceType
       ),
    _cpcfConfigRuleNames ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'ConformancePackComplianceFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcfComplianceType' - Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
--
-- * 'cpcfConfigRuleNames' - Filters the results by AWS Config rule names.
conformancePackComplianceFilters ::
  ConformancePackComplianceFilters
conformancePackComplianceFilters =
  ConformancePackComplianceFilters'
    { _cpcfComplianceType =
        Nothing,
      _cpcfConfigRuleNames = Nothing
    }

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
cpcfComplianceType :: Lens' ConformancePackComplianceFilters (Maybe ConformancePackComplianceType)
cpcfComplianceType = lens _cpcfComplianceType (\s a -> s {_cpcfComplianceType = a})

-- | Filters the results by AWS Config rule names.
cpcfConfigRuleNames :: Lens' ConformancePackComplianceFilters [Text]
cpcfConfigRuleNames = lens _cpcfConfigRuleNames (\s a -> s {_cpcfConfigRuleNames = a}) . _Default . _Coerce

instance Hashable ConformancePackComplianceFilters

instance NFData ConformancePackComplianceFilters

instance ToJSON ConformancePackComplianceFilters where
  toJSON ConformancePackComplianceFilters' {..} =
    object
      ( catMaybes
          [ ("ComplianceType" .=) <$> _cpcfComplianceType,
            ("ConfigRuleNames" .=) <$> _cpcfConfigRuleNames
          ]
      )
