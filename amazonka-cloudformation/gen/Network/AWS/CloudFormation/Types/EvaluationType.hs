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
-- Module      : Network.AWS.CloudFormation.Types.EvaluationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.EvaluationType
  ( EvaluationType
      ( ..,
        EvaluationTypeDynamic,
        EvaluationTypeStatic
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

pattern EvaluationTypeDynamic :: EvaluationType
pattern EvaluationTypeDynamic = EvaluationType' "Dynamic"

pattern EvaluationTypeStatic :: EvaluationType
pattern EvaluationTypeStatic = EvaluationType' "Static"

{-# COMPLETE
  EvaluationTypeDynamic,
  EvaluationTypeStatic,
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

instance Prelude.FromXML EvaluationType where
  parseXML = Prelude.parseXMLText "EvaluationType"
