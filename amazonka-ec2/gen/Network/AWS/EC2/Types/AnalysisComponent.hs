{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisComponent where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a path component.
--
--
--
-- /See:/ 'analysisComponent' smart constructor.
data AnalysisComponent = AnalysisComponent'
  { _acARN ::
      !(Maybe Text),
    _acId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnalysisComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acARN' - The Amazon Resource Name (ARN) of the component.
--
-- * 'acId' - The ID of the component.
analysisComponent ::
  AnalysisComponent
analysisComponent =
  AnalysisComponent'
    { _acARN = Nothing,
      _acId = Nothing
    }

-- | The Amazon Resource Name (ARN) of the component.
acARN :: Lens' AnalysisComponent (Maybe Text)
acARN = lens _acARN (\s a -> s {_acARN = a})

-- | The ID of the component.
acId :: Lens' AnalysisComponent (Maybe Text)
acId = lens _acId (\s a -> s {_acId = a})

instance FromXML AnalysisComponent where
  parseXML x =
    AnalysisComponent'
      <$> (x .@? "arn") <*> (x .@? "id")

instance Hashable AnalysisComponent

instance NFData AnalysisComponent
