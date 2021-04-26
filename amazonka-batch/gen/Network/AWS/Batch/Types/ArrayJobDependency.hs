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
-- Module      : Network.AWS.Batch.Types.ArrayJobDependency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ArrayJobDependency
  ( ArrayJobDependency
      ( ..,
        ArrayJobDependencyNTON,
        ArrayJobDependencySEQUENTIAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArrayJobDependency = ArrayJobDependency'
  { fromArrayJobDependency ::
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

pattern ArrayJobDependencyNTON :: ArrayJobDependency
pattern ArrayJobDependencyNTON = ArrayJobDependency' "N_TO_N"

pattern ArrayJobDependencySEQUENTIAL :: ArrayJobDependency
pattern ArrayJobDependencySEQUENTIAL = ArrayJobDependency' "SEQUENTIAL"

{-# COMPLETE
  ArrayJobDependencyNTON,
  ArrayJobDependencySEQUENTIAL,
  ArrayJobDependency'
  #-}

instance Prelude.FromText ArrayJobDependency where
  parser = ArrayJobDependency' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArrayJobDependency where
  toText (ArrayJobDependency' x) = x

instance Prelude.Hashable ArrayJobDependency

instance Prelude.NFData ArrayJobDependency

instance Prelude.ToByteString ArrayJobDependency

instance Prelude.ToQuery ArrayJobDependency

instance Prelude.ToHeader ArrayJobDependency

instance Prelude.ToJSON ArrayJobDependency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArrayJobDependency where
  parseJSON = Prelude.parseJSONText "ArrayJobDependency"
