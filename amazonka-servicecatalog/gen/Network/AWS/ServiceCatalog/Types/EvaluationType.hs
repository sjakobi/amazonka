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
-- Module      : Network.AWS.ServiceCatalog.Types.EvaluationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.EvaluationType
  ( EvaluationType
      ( ..,
        EvaluationTypeDYNAMIC,
        EvaluationTypeSTATIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EvaluationType = EvaluationType'
  { fromEvaluationType ::
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

pattern EvaluationTypeDYNAMIC :: EvaluationType
pattern EvaluationTypeDYNAMIC = EvaluationType' "DYNAMIC"

pattern EvaluationTypeSTATIC :: EvaluationType
pattern EvaluationTypeSTATIC = EvaluationType' "STATIC"

{-# COMPLETE
  EvaluationTypeDYNAMIC,
  EvaluationTypeSTATIC,
  EvaluationType'
  #-}

instance Prelude.FromText EvaluationType where
  parser = EvaluationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EvaluationType where
  toText (EvaluationType' x) = x

instance Prelude.Hashable EvaluationType

instance Prelude.NFData EvaluationType

instance Prelude.ToByteString EvaluationType

instance Prelude.ToQuery EvaluationType

instance Prelude.ToHeader EvaluationType

instance Prelude.FromJSON EvaluationType where
  parseJSON = Prelude.parseJSONText "EvaluationType"
