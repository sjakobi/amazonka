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
-- Module      : Network.AWS.IoT.Types.AwsJobAbortCriteriaFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AwsJobAbortCriteriaFailureType
  ( AwsJobAbortCriteriaFailureType
      ( ..,
        AwsJobAbortCriteriaFailureTypeALL,
        AwsJobAbortCriteriaFailureTypeFAILED,
        AwsJobAbortCriteriaFailureTypeREJECTED,
        AwsJobAbortCriteriaFailureTypeTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AwsJobAbortCriteriaFailureType = AwsJobAbortCriteriaFailureType'
  { fromAwsJobAbortCriteriaFailureType ::
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

pattern AwsJobAbortCriteriaFailureTypeALL :: AwsJobAbortCriteriaFailureType
pattern AwsJobAbortCriteriaFailureTypeALL = AwsJobAbortCriteriaFailureType' "ALL"

pattern AwsJobAbortCriteriaFailureTypeFAILED :: AwsJobAbortCriteriaFailureType
pattern AwsJobAbortCriteriaFailureTypeFAILED = AwsJobAbortCriteriaFailureType' "FAILED"

pattern AwsJobAbortCriteriaFailureTypeREJECTED :: AwsJobAbortCriteriaFailureType
pattern AwsJobAbortCriteriaFailureTypeREJECTED = AwsJobAbortCriteriaFailureType' "REJECTED"

pattern AwsJobAbortCriteriaFailureTypeTIMEDOUT :: AwsJobAbortCriteriaFailureType
pattern AwsJobAbortCriteriaFailureTypeTIMEDOUT = AwsJobAbortCriteriaFailureType' "TIMED_OUT"

{-# COMPLETE
  AwsJobAbortCriteriaFailureTypeALL,
  AwsJobAbortCriteriaFailureTypeFAILED,
  AwsJobAbortCriteriaFailureTypeREJECTED,
  AwsJobAbortCriteriaFailureTypeTIMEDOUT,
  AwsJobAbortCriteriaFailureType'
  #-}

instance Prelude.FromText AwsJobAbortCriteriaFailureType where
  parser = AwsJobAbortCriteriaFailureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AwsJobAbortCriteriaFailureType where
  toText (AwsJobAbortCriteriaFailureType' x) = x

instance Prelude.Hashable AwsJobAbortCriteriaFailureType

instance Prelude.NFData AwsJobAbortCriteriaFailureType

instance Prelude.ToByteString AwsJobAbortCriteriaFailureType

instance Prelude.ToQuery AwsJobAbortCriteriaFailureType

instance Prelude.ToHeader AwsJobAbortCriteriaFailureType

instance Prelude.ToJSON AwsJobAbortCriteriaFailureType where
  toJSON = Prelude.toJSONText
