{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Explainability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Explainability where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MetricsSource

-- | Contains explainability metrics for a model.
--
--
--
-- /See:/ 'explainability' smart constructor.
newtype Explainability = Explainability'
  { _eReport ::
      Maybe MetricsSource
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Explainability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eReport' - The explainability report for a model.
explainability ::
  Explainability
explainability = Explainability' {_eReport = Nothing}

-- | The explainability report for a model.
eReport :: Lens' Explainability (Maybe MetricsSource)
eReport = lens _eReport (\s a -> s {_eReport = a})

instance FromJSON Explainability where
  parseJSON =
    withObject
      "Explainability"
      (\x -> Explainability' <$> (x .:? "Report"))

instance Hashable Explainability

instance NFData Explainability

instance ToJSON Explainability where
  toJSON Explainability' {..} =
    object (catMaybes [("Report" .=) <$> _eReport])
