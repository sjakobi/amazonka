{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.CreateQualificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateQualificationType@ operation creates a new Qualification type, which is represented by a @QualificationType@ data structure.
module Network.AWS.MechanicalTurk.CreateQualificationType
  ( -- * Creating a Request
    createQualificationType,
    CreateQualificationType,

    -- * Request Lenses
    cqtRetryDelayInSeconds,
    cqtAutoGranted,
    cqtTestDurationInSeconds,
    cqtTest,
    cqtAnswerKey,
    cqtAutoGrantedValue,
    cqtKeywords,
    cqtName,
    cqtDescription,
    cqtQualificationTypeStatus,

    -- * Destructuring the Response
    createQualificationTypeResponse,
    CreateQualificationTypeResponse,

    -- * Response Lenses
    cqtrrsQualificationType,
    cqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createQualificationType' smart constructor.
data CreateQualificationType = CreateQualificationType'
  { _cqtRetryDelayInSeconds ::
      !(Maybe Integer),
    _cqtAutoGranted ::
      !(Maybe Bool),
    _cqtTestDurationInSeconds ::
      !(Maybe Integer),
    _cqtTest ::
      !(Maybe Text),
    _cqtAnswerKey ::
      !(Maybe Text),
    _cqtAutoGrantedValue ::
      !(Maybe Int),
    _cqtKeywords ::
      !(Maybe Text),
    _cqtName :: !Text,
    _cqtDescription ::
      !Text,
    _cqtQualificationTypeStatus ::
      !QualificationTypeStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateQualificationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqtRetryDelayInSeconds' - The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request. Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.
--
-- * 'cqtAutoGranted' - Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Constraints: If the Test parameter is specified, this parameter cannot be true.
--
-- * 'cqtTestDurationInSeconds' - The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.
--
-- * 'cqtTest' - The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, @TestDurationInSeconds@ must also be specified.  Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true. Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.
--
-- * 'cqtAnswerKey' - The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure. Constraints: Must not be longer than 65535 bytes. Constraints: None. If not specified, you must process Qualification requests manually.
--
-- * 'cqtAutoGrantedValue' - The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.
--
-- * 'cqtKeywords' - One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.
--
-- * 'cqtName' - The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.
--
-- * 'cqtDescription' - A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.
--
-- * 'cqtQualificationTypeStatus' - The initial status of the Qualification type. Constraints: Valid values are: Active | Inactive
createQualificationType ::
  -- | 'cqtName'
  Text ->
  -- | 'cqtDescription'
  Text ->
  -- | 'cqtQualificationTypeStatus'
  QualificationTypeStatus ->
  CreateQualificationType
createQualificationType
  pName_
  pDescription_
  pQualificationTypeStatus_ =
    CreateQualificationType'
      { _cqtRetryDelayInSeconds =
          Nothing,
        _cqtAutoGranted = Nothing,
        _cqtTestDurationInSeconds = Nothing,
        _cqtTest = Nothing,
        _cqtAnswerKey = Nothing,
        _cqtAutoGrantedValue = Nothing,
        _cqtKeywords = Nothing,
        _cqtName = pName_,
        _cqtDescription = pDescription_,
        _cqtQualificationTypeStatus =
          pQualificationTypeStatus_
      }

-- | The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request. Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.
cqtRetryDelayInSeconds :: Lens' CreateQualificationType (Maybe Integer)
cqtRetryDelayInSeconds = lens _cqtRetryDelayInSeconds (\s a -> s {_cqtRetryDelayInSeconds = a})

-- | Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Constraints: If the Test parameter is specified, this parameter cannot be true.
cqtAutoGranted :: Lens' CreateQualificationType (Maybe Bool)
cqtAutoGranted = lens _cqtAutoGranted (\s a -> s {_cqtAutoGranted = a})

-- | The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.
cqtTestDurationInSeconds :: Lens' CreateQualificationType (Maybe Integer)
cqtTestDurationInSeconds = lens _cqtTestDurationInSeconds (\s a -> s {_cqtTestDurationInSeconds = a})

-- | The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, @TestDurationInSeconds@ must also be specified.  Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true. Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.
cqtTest :: Lens' CreateQualificationType (Maybe Text)
cqtTest = lens _cqtTest (\s a -> s {_cqtTest = a})

-- | The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure. Constraints: Must not be longer than 65535 bytes. Constraints: None. If not specified, you must process Qualification requests manually.
cqtAnswerKey :: Lens' CreateQualificationType (Maybe Text)
cqtAnswerKey = lens _cqtAnswerKey (\s a -> s {_cqtAnswerKey = a})

-- | The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.
cqtAutoGrantedValue :: Lens' CreateQualificationType (Maybe Int)
cqtAutoGrantedValue = lens _cqtAutoGrantedValue (\s a -> s {_cqtAutoGrantedValue = a})

-- | One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.
cqtKeywords :: Lens' CreateQualificationType (Maybe Text)
cqtKeywords = lens _cqtKeywords (\s a -> s {_cqtKeywords = a})

-- | The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.
cqtName :: Lens' CreateQualificationType Text
cqtName = lens _cqtName (\s a -> s {_cqtName = a})

-- | A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.
cqtDescription :: Lens' CreateQualificationType Text
cqtDescription = lens _cqtDescription (\s a -> s {_cqtDescription = a})

-- | The initial status of the Qualification type. Constraints: Valid values are: Active | Inactive
cqtQualificationTypeStatus :: Lens' CreateQualificationType QualificationTypeStatus
cqtQualificationTypeStatus = lens _cqtQualificationTypeStatus (\s a -> s {_cqtQualificationTypeStatus = a})

instance AWSRequest CreateQualificationType where
  type
    Rs CreateQualificationType =
      CreateQualificationTypeResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          CreateQualificationTypeResponse'
            <$> (x .?> "QualificationType") <*> (pure (fromEnum s))
      )

instance Hashable CreateQualificationType

instance NFData CreateQualificationType

instance ToHeaders CreateQualificationType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.CreateQualificationType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateQualificationType where
  toJSON CreateQualificationType' {..} =
    object
      ( catMaybes
          [ ("RetryDelayInSeconds" .=)
              <$> _cqtRetryDelayInSeconds,
            ("AutoGranted" .=) <$> _cqtAutoGranted,
            ("TestDurationInSeconds" .=)
              <$> _cqtTestDurationInSeconds,
            ("Test" .=) <$> _cqtTest,
            ("AnswerKey" .=) <$> _cqtAnswerKey,
            ("AutoGrantedValue" .=) <$> _cqtAutoGrantedValue,
            ("Keywords" .=) <$> _cqtKeywords,
            Just ("Name" .= _cqtName),
            Just ("Description" .= _cqtDescription),
            Just
              ( "QualificationTypeStatus"
                  .= _cqtQualificationTypeStatus
              )
          ]
      )

instance ToPath CreateQualificationType where
  toPath = const "/"

instance ToQuery CreateQualificationType where
  toQuery = const mempty

-- | /See:/ 'createQualificationTypeResponse' smart constructor.
data CreateQualificationTypeResponse = CreateQualificationTypeResponse'
  { _cqtrrsQualificationType ::
      !( Maybe
           QualificationType
       ),
    _cqtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateQualificationTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqtrrsQualificationType' - The created Qualification type, returned as a QualificationType data structure.
--
-- * 'cqtrrsResponseStatus' - -- | The response status code.
createQualificationTypeResponse ::
  -- | 'cqtrrsResponseStatus'
  Int ->
  CreateQualificationTypeResponse
createQualificationTypeResponse pResponseStatus_ =
  CreateQualificationTypeResponse'
    { _cqtrrsQualificationType =
        Nothing,
      _cqtrrsResponseStatus = pResponseStatus_
    }

-- | The created Qualification type, returned as a QualificationType data structure.
cqtrrsQualificationType :: Lens' CreateQualificationTypeResponse (Maybe QualificationType)
cqtrrsQualificationType = lens _cqtrrsQualificationType (\s a -> s {_cqtrrsQualificationType = a})

-- | -- | The response status code.
cqtrrsResponseStatus :: Lens' CreateQualificationTypeResponse Int
cqtrrsResponseStatus = lens _cqtrrsResponseStatus (\s a -> s {_cqtrrsResponseStatus = a})

instance NFData CreateQualificationTypeResponse
