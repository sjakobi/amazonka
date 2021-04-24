{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrialComponentPrimaryStatus

-- | The status of the trial component.
--
--
--
-- /See:/ 'trialComponentStatus' smart constructor.
data TrialComponentStatus = TrialComponentStatus'
  { _tcsMessage ::
      !(Maybe Text),
    _tcsPrimaryStatus ::
      !( Maybe
           TrialComponentPrimaryStatus
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrialComponentStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsMessage' - If the component failed, a message describing why.
--
-- * 'tcsPrimaryStatus' - The status of the trial component.
trialComponentStatus ::
  TrialComponentStatus
trialComponentStatus =
  TrialComponentStatus'
    { _tcsMessage = Nothing,
      _tcsPrimaryStatus = Nothing
    }

-- | If the component failed, a message describing why.
tcsMessage :: Lens' TrialComponentStatus (Maybe Text)
tcsMessage = lens _tcsMessage (\s a -> s {_tcsMessage = a})

-- | The status of the trial component.
tcsPrimaryStatus :: Lens' TrialComponentStatus (Maybe TrialComponentPrimaryStatus)
tcsPrimaryStatus = lens _tcsPrimaryStatus (\s a -> s {_tcsPrimaryStatus = a})

instance FromJSON TrialComponentStatus where
  parseJSON =
    withObject
      "TrialComponentStatus"
      ( \x ->
          TrialComponentStatus'
            <$> (x .:? "Message") <*> (x .:? "PrimaryStatus")
      )

instance Hashable TrialComponentStatus

instance NFData TrialComponentStatus

instance ToJSON TrialComponentStatus where
  toJSON TrialComponentStatus' {..} =
    object
      ( catMaybes
          [ ("Message" .=) <$> _tcsMessage,
            ("PrimaryStatus" .=) <$> _tcsPrimaryStatus
          ]
      )
