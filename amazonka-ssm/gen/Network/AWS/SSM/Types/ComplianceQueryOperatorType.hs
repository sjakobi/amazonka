{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceQueryOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceQueryOperatorType
  ( ComplianceQueryOperatorType
      ( ..,
        ComplianceQueryOperatorTypeBEGINWITH,
        ComplianceQueryOperatorTypeEQUAL,
        ComplianceQueryOperatorTypeGREATERTHAN,
        ComplianceQueryOperatorTypeLESSTHAN,
        ComplianceQueryOperatorTypeNOTEQUAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComplianceQueryOperatorType = ComplianceQueryOperatorType'
  { fromComplianceQueryOperatorType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ComplianceQueryOperatorTypeBEGINWITH :: ComplianceQueryOperatorType
pattern ComplianceQueryOperatorTypeBEGINWITH = ComplianceQueryOperatorType' "BEGIN_WITH"

pattern ComplianceQueryOperatorTypeEQUAL :: ComplianceQueryOperatorType
pattern ComplianceQueryOperatorTypeEQUAL = ComplianceQueryOperatorType' "EQUAL"

pattern ComplianceQueryOperatorTypeGREATERTHAN :: ComplianceQueryOperatorType
pattern ComplianceQueryOperatorTypeGREATERTHAN = ComplianceQueryOperatorType' "GREATER_THAN"

pattern ComplianceQueryOperatorTypeLESSTHAN :: ComplianceQueryOperatorType
pattern ComplianceQueryOperatorTypeLESSTHAN = ComplianceQueryOperatorType' "LESS_THAN"

pattern ComplianceQueryOperatorTypeNOTEQUAL :: ComplianceQueryOperatorType
pattern ComplianceQueryOperatorTypeNOTEQUAL = ComplianceQueryOperatorType' "NOT_EQUAL"

{-# COMPLETE
  ComplianceQueryOperatorTypeBEGINWITH,
  ComplianceQueryOperatorTypeEQUAL,
  ComplianceQueryOperatorTypeGREATERTHAN,
  ComplianceQueryOperatorTypeLESSTHAN,
  ComplianceQueryOperatorTypeNOTEQUAL,
  ComplianceQueryOperatorType'
  #-}

instance Prelude.FromText ComplianceQueryOperatorType where
  parser = ComplianceQueryOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComplianceQueryOperatorType where
  toText (ComplianceQueryOperatorType' x) = x

instance Prelude.Hashable ComplianceQueryOperatorType

instance Prelude.NFData ComplianceQueryOperatorType

instance Prelude.ToByteString ComplianceQueryOperatorType

instance Prelude.ToQuery ComplianceQueryOperatorType

instance Prelude.ToHeader ComplianceQueryOperatorType

instance Prelude.ToJSON ComplianceQueryOperatorType where
  toJSON = Prelude.toJSONText
