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
-- Module      : Network.AWS.MediaConvert.Types.Commitment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Commitment
  ( Commitment
      ( ..,
        CommitmentONEYEAR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The length of the term of your reserved queue pricing plan commitment.
newtype Commitment = Commitment'
  { fromCommitment ::
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

pattern CommitmentONEYEAR :: Commitment
pattern CommitmentONEYEAR = Commitment' "ONE_YEAR"

{-# COMPLETE
  CommitmentONEYEAR,
  Commitment'
  #-}

instance Prelude.FromText Commitment where
  parser = Commitment' Prelude.<$> Prelude.takeText

instance Prelude.ToText Commitment where
  toText (Commitment' x) = x

instance Prelude.Hashable Commitment

instance Prelude.NFData Commitment

instance Prelude.ToByteString Commitment

instance Prelude.ToQuery Commitment

instance Prelude.ToHeader Commitment

instance Prelude.ToJSON Commitment where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Commitment where
  parseJSON = Prelude.parseJSONText "Commitment"
