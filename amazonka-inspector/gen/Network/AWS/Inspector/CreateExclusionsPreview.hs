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
-- Module      : Network.AWS.Inspector.CreateExclusionsPreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment.
module Network.AWS.Inspector.CreateExclusionsPreview
  ( -- * Creating a Request
    createExclusionsPreview,
    CreateExclusionsPreview,

    -- * Request Lenses
    cepAssessmentTemplateARN,

    -- * Destructuring the Response
    createExclusionsPreviewResponse,
    CreateExclusionsPreviewResponse,

    -- * Response Lenses
    ceprrsResponseStatus,
    ceprrsPreviewToken,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createExclusionsPreview' smart constructor.
newtype CreateExclusionsPreview = CreateExclusionsPreview'
  { _cepAssessmentTemplateARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateExclusionsPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cepAssessmentTemplateARN' - The ARN that specifies the assessment template for which you want to create an exclusions preview.
createExclusionsPreview ::
  -- | 'cepAssessmentTemplateARN'
  Text ->
  CreateExclusionsPreview
createExclusionsPreview pAssessmentTemplateARN_ =
  CreateExclusionsPreview'
    { _cepAssessmentTemplateARN =
        pAssessmentTemplateARN_
    }

-- | The ARN that specifies the assessment template for which you want to create an exclusions preview.
cepAssessmentTemplateARN :: Lens' CreateExclusionsPreview Text
cepAssessmentTemplateARN = lens _cepAssessmentTemplateARN (\s a -> s {_cepAssessmentTemplateARN = a})

instance AWSRequest CreateExclusionsPreview where
  type
    Rs CreateExclusionsPreview =
      CreateExclusionsPreviewResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          CreateExclusionsPreviewResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "previewToken")
      )

instance Hashable CreateExclusionsPreview

instance NFData CreateExclusionsPreview

instance ToHeaders CreateExclusionsPreview where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.CreateExclusionsPreview" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateExclusionsPreview where
  toJSON CreateExclusionsPreview' {..} =
    object
      ( catMaybes
          [ Just
              ( "assessmentTemplateArn"
                  .= _cepAssessmentTemplateARN
              )
          ]
      )

instance ToPath CreateExclusionsPreview where
  toPath = const "/"

instance ToQuery CreateExclusionsPreview where
  toQuery = const mempty

-- | /See:/ 'createExclusionsPreviewResponse' smart constructor.
data CreateExclusionsPreviewResponse = CreateExclusionsPreviewResponse'
  { _ceprrsResponseStatus ::
      !Int,
    _ceprrsPreviewToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateExclusionsPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceprrsResponseStatus' - -- | The response status code.
--
-- * 'ceprrsPreviewToken' - Specifies the unique identifier of the requested exclusions preview. You can use the unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview API.
createExclusionsPreviewResponse ::
  -- | 'ceprrsResponseStatus'
  Int ->
  -- | 'ceprrsPreviewToken'
  Text ->
  CreateExclusionsPreviewResponse
createExclusionsPreviewResponse
  pResponseStatus_
  pPreviewToken_ =
    CreateExclusionsPreviewResponse'
      { _ceprrsResponseStatus =
          pResponseStatus_,
        _ceprrsPreviewToken = pPreviewToken_
      }

-- | -- | The response status code.
ceprrsResponseStatus :: Lens' CreateExclusionsPreviewResponse Int
ceprrsResponseStatus = lens _ceprrsResponseStatus (\s a -> s {_ceprrsResponseStatus = a})

-- | Specifies the unique identifier of the requested exclusions preview. You can use the unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview API.
ceprrsPreviewToken :: Lens' CreateExclusionsPreviewResponse Text
ceprrsPreviewToken = lens _ceprrsPreviewToken (\s a -> s {_ceprrsPreviewToken = a})

instance NFData CreateExclusionsPreviewResponse
