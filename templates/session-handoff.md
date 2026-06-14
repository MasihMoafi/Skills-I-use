# Session Handoff

Use this template to transition context cleanly between development sessions or when handing off to a different agent model.

## 🟢 Currently Verified
- **Features working**: [List features verified this session]
- **Verification commands**: [List test/verify commands run]

## 🛠️ Changes Made This Session
- **Files Modified/Created**:
  - `path/to/file.py`: Added feature X
  - `path/to/test.py`: Added unit tests for X
- **Infrastructure**: [Migrations run, packages added, etc.]

## ⚠️ Still Broken / Unverified Risks
- [List any test failures, incomplete logic, or risky changes]
- [e.g., Database migrations pass locally but might fail on mysql]

## ⏭️ Next Best Action
- **Start here**: [Specify the precise file and line, or next task ID]
- **Do NOT touch**: [Any files or APIs that should be kept frozen]

## 🔧 Reference Commands
- **Startup**: `npm run dev`
- **Verify**: `npm test`
- **Debug logs**: `tail -f logs/app.log`
