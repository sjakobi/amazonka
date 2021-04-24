{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ExternalEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ExternalEvaluation where

import Network.AWS.Config.Types.ComplianceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.
--
--
--
-- /See:/ 'externalEvaluation' smart constructor.
data ExternalEvaluation = ExternalEvaluation'
  { _eeAnnotation ::
      !(Maybe Text),
    _eeComplianceResourceType ::
      !Text,
    _eeComplianceResourceId :: !Text,
    _eeComplianceType ::
      !ComplianceType,
    _eeOrderingTimestamp :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExternalEvaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeAnnotation' - Supplementary information about the reason of compliance. For example, this task was completed on a specific date.
--
-- * 'eeComplianceResourceType' - The evaluated compliance resource type. AWS Config accepts @AWS::::Account@ resource type.
--
-- * 'eeComplianceResourceId' - The evaluated compliance resource ID. AWS Config accepts only AWS account ID.
--
-- * 'eeComplianceType' - The compliance of the AWS resource. The valid values are @COMPLIANT, NON_COMPLIANT, @ and @NOT_APPLICABLE@ .
--
-- * 'eeOrderingTimestamp' - The time when the compliance was recorded.
externalEvaluation ::
  -- | 'eeComplianceResourceType'
  Text ->
  -- | 'eeComplianceResourceId'
  Text ->
  -- | 'eeComplianceType'
  ComplianceType ->
  -- | 'eeOrderingTimestamp'
  UTCTime ->
  ExternalEvaluation
externalEvaluation
  pComplianceResourceType_
  pComplianceResourceId_
  pComplianceType_
  pOrderingTimestamp_ =
    ExternalEvaluation'
      { _eeAnnotation = Nothing,
        _eeComplianceResourceType = pComplianceResourceType_,
        _eeComplianceResourceId = pComplianceResourceId_,
        _eeComplianceType = pComplianceType_,
        _eeOrderingTimestamp = _Time # pOrderingTimestamp_
      }

-- | Supplementary information about the reason of compliance. For example, this task was completed on a specific date.
eeAnnotation :: Lens' ExternalEvaluation (Maybe Text)
eeAnnotation = lens _eeAnnotation (\s a -> s {_eeAnnotation = a})

-- | The evaluated compliance resource type. AWS Config accepts @AWS::::Account@ resource type.
eeComplianceResourceType :: Lens' ExternalEvaluation Text
eeComplianceResourceType = lens _eeComplianceResourceType (\s a -> s {_eeComplianceResourceType = a})

-- | The evaluated compliance resource ID. AWS Config accepts only AWS account ID.
eeComplianceResourceId :: Lens' ExternalEvaluation Text
eeComplianceResourceId = lens _eeComplianceResourceId (\s a -> s {_eeComplianceResourceId = a})

-- | The compliance of the AWS resource. The valid values are @COMPLIANT, NON_COMPLIANT, @ and @NOT_APPLICABLE@ .
eeComplianceType :: Lens' ExternalEvaluation ComplianceType
eeComplianceType = lens _eeComplianceType (\s a -> s {_eeComplianceType = a})

-- | The time when the compliance was recorded.
eeOrderingTimestamp :: Lens' ExternalEvaluation UTCTime
eeOrderingTimestamp = lens _eeOrderingTimestamp (\s a -> s {_eeOrderingTimestamp = a}) . _Time

instance Hashable ExternalEvaluation

instance NFData ExternalEvaluation

instance ToJSON ExternalEvaluation where
  toJSON ExternalEvaluation' {..} =
    object
      ( catMaybes
          [ ("Annotation" .=) <$> _eeAnnotation,
            Just
              ( "ComplianceResourceType"
                  .= _eeComplianceResourceType
              ),
            Just
              ("ComplianceResourceId" .= _eeComplianceResourceId),
            Just ("ComplianceType" .= _eeComplianceType),
            Just ("OrderingTimestamp" .= _eeOrderingTimestamp)
          ]
      )
